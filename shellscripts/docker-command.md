### NOTE FOR COMMAND

```bash
# User for read content with specific line
sed -n '17,20p' /etc/passwd
awk 'NR>=17 && NR<=20 {print}' /etc/passwd
awk 'NR>=17 && NR<=20 {print NR, $0}' /etc/passwd

head -20 /etc/passwd | tail -4

# Installation portainer docker

docker volume create portainer_data

docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:lts

docker image = nginx:latest
nginx = nginx:latest

# -d => run as background (detached mode)
# -p => map port, publish port
# 3000/80 => 3000 is host port & 80 is container port = localhost:3000 -> nginx 80
docker run -d -p 3000:80 --name nginx-cont nginx
docker run postgres
# practice with real project
# 3001 is host port & 3000 is container port
docker run -dp 3001:3000 --name react-cont react-demo

# list all container
docker ps -a

# list all image, container, network
docker image ls || docker images
docker container ls
docker network ls

docker logs
docker restart
docker prune

# to watch docker ps every 3 second
watch docker ps

# to see 
docker logs -f name_of_container

# Dockerfile => need to run inside project folder
docker build -t name_of_image .

# to build prod.Dockerfile with nginx
docker build -t name_of_image -f prod.Dockerfile .
```