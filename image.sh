#!/bin/sh
# pull 
docker pull itaimalek/rickandmorty:latest   
#run 
docker run -itd --name noaimg -e RUN="TRUE" -p8080:8000 itaimalek/rickandmorty:latest
#stop 
docker stop noaimg
#delete 
docker rmi noaimg
#re-tag 
docker tag itaimalek/rickandmorty:latest n038060222/homework1:noaimg
#push
docker push n038060222/homework1:noaimg
