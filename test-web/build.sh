#!/bin/bash
docker build -t nh/testweb .

#docker service create --name testweb --replicas 3 --publish 8000:8000 --mount type=tmpfs,target=/work,tmpfs-size=100m --name testweb nh/testweb:latest

 
#docker run -dit -v /dev/shm --tmpfs /work:rw,nosuid,nodev,exec,size=4g -p 8000:8000 --name testweb nh/testweb
