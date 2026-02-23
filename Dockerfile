FROM nextcloud:apache

ENV SQLITE_DATABASE=nextcloud.db

ENV NEXTCLOUD_ADMIN_USER=admin
ENV NEXTCLOUD_ADMIN_PASSWORD=admin

COPY media /seed
COPY license /license

COPY seedDir /seedDir
RUN chmod +x /seedDir/*.sh
RUN cp /seedDir/seed.sh /docker-entrypoint-hooks.d/post-installation/seed.sh
RUN apt-get update && apt-get install -y socat && rm -rf /var/lib/apt/lists/*
