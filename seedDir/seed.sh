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
php occ config:app:set richdocuments wopi_url --value="http://127.0.0.1/custom_apps/richdocumentscode/proxy.php?req="
php occ config:app:set richdocuments public_wopi_url --value="http://127.0.0.1/custom_apps/richdocumentscode/proxy.php?req="
php occ config:app:set richdocuments disable_certificate_verification --value="yes"
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
socat TCP-LISTEN:8080,fork,bind=127.0.0.1 TCP:127.0.0.1:80 &


php occ files:scan --all

echo "Scheduling background API seeding..."
# We spawn a background process that waits for port 80 to open up and then fires the API requests.
(
  echo "Waiting for Apache port 80 to become available for API seeding..."
  until curl -s http://127.0.0.1/login > /dev/null; do
    sleep 5
  done

  echo "Apache is up. Executing API seeding scripts..."
  bash /seedDir/calendar.sh
  bash /seedDir/contacts.sh
  bash /seedDir/talk.sh

  echo "Background API seeding complete!"
) &

echo "Seeding complete."
