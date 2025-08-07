#!/bin/bash

cd ${0%/*}

echo "!"
echo "!"
echo "! Current dirrectory: $PWD"
echo "!"
echo "!"
read -p "! Recreate docker container?"

docker-compose stop
docker rm nextcloud
docker rmi eeker/nextcloud

sudo docker build -t eeker/nextcloud .
sudo docker push eeker/nextcloud
#docker-compose up -d

