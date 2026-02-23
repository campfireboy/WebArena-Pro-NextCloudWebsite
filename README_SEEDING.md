# Note on Seeding

To properly seed the Nextcloud instance with the files in `./media`, you must start the container using `docker-compose`, which mounts the local directories into the container.

Run the following command:
```bash
docker-compose up --build -d
```

If you use `docker run` directly, the volume mounts in `docker-compose.yml` are ignored, and the `/seed` directory will not exist inside the container, causing `seed.sh` to fail or skip copying files.
