#!/bin/bash
[ ! -e /opt/data/hosts ] && mkdir -p /opt/data/hosts
rm -fR /opt/data/hosts/*

docker-compose build
docker-compose up -d


#docker service create --name ansiblei-clients --replicas 3  --mount /opt/data:/opt/data ansible_server:latest 
#docker service create --name ansiblei-servers --replicas 1  --mount /opt/data:/opt/data ansible_client:latest 
