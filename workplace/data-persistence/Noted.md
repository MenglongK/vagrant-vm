## NOTE
```bash
# Docker Volume
docker volume create postgres-vol
docker volume ls

# to create volume
docker volume create name_of_volume

# to run that volume
docker run -dp 5432:5432 \
    --name postgres-cont \
    -e POSTGRES_PASSWORD=123 \
    -v postgres-vol:/var/lib/postgresql \
    postgres

# Bind Mount
mkdir images-storage
docker run -dp 8080:8080 \
    -v ./images-storage:/app/filestorage/images \
    --name spring-cont fileupload-spring
```