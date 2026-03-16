#!/bin/bash
set -e

# Wait for Nextcloud to finish install
until [ -f /var/www/html/config/config.php ]; do
  echo "Waiting for Nextcloud to initialize..."
  sleep 5
done

echo "Creating users..."

# Create users
export OC_PASS=agentpass
php occ app:disable password_policy || true
php occ app:disable firstrunwizard || true

# Disable default skeleton files
php occ config:system:set skeletondirectory --value=""

# Install requested apps for basic groupware 
echo "Installing apps..."
php occ app:install calendar || true
php occ app:install contacts || true
php occ app:install notes || true
php occ app:install spreed || true # Talk app
php occ app:install richdocuments || true # Nextcloud Office
php occ app:install richdocumentscode || true # Built-in Collabora server
php occ config:app:set richdocuments disable_certificate_verification --value="yes"
php occ config:app:set richdocuments wopi_allowlist --value="0.0.0.0/0,127.0.0.1"
#decided againt mail app for now because it requires providing a real email address
#php occ app:install mail || true

php occ user:add --password-from-env agent1
php occ user:add --password-from-env agent2

# Copy seeded files
echo "Seeding files..."

#making location for files
mkdir -p /var/www/html/data/agent1/files/
mkdir -p /var/www/html/data/agent2/files/

# allows webserver to read and write files
chown -R www-data:www-data /var/www/html/data/agent1
chown -R www-data:www-data /var/www/html/data/agent2

#actually copying files into directory within container
cp -r /seed/agent1/* /var/www/html/data/agent1/files/ || true
cp -r /seed/agent2/* /var/www/html/data/agent2/files/ || true

echo "Starting socat loopback routing for Nextcloud Office..."
socat TCP-LISTEN:8080,fork,bind=0.0.0.0 TCP:127.0.0.1:80 &


php occ files:scan --all

echo "Scheduling background API seeding..."
# We spawn a background process that waits for port 80 to open up and then fires the API requests.
(
  echo "Waiting for Apache port 80 to become available for API seeding..."
  until curl -s http://127.0.0.1/login > /dev/null; do
    sleep 5
  done

  php occ config:app:set richdocuments wopi_url --value="http://localhost:8080/custom_apps/richdocumentscode/proxy.php?req="

  echo "Apache is up. Executing API seeding scripts..."
  bash /seedDir/calendar.sh
  bash /seedDir/contacts.sh
  bash /seedDir/talk.sh


  echo "Verifying Office Handshake..."

  MAX_RETRIES=10
  COUNT=0

  until php occ richdocuments:activate-config > /dev/null 2>&1 || [ $COUNT -eq $MAX_RETRIES ]; do
    echo "Handshake pending... retrying ($((COUNT+1))/$MAX_RETRIES)"
    sleep 5
    COUNT=$((COUNT+1))
  done

  if [ $COUNT -eq $MAX_RETRIES ]; then
    echo "ERROR: Office handshake failed after $MAX_RETRIES attempts. Moving on..."
  else
    echo "Handshake Verified! Office is ready for all users."
  fi

    echo "Background API seeding complete!"
  ) &

echo "Seeding complete."
