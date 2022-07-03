#!/bin/sh
# pull 
docker pull tomcat:jdk8-corretto   
#run 
docker run -itd --name tomcat -e RUN="TRUE" -p 8000:8080 tomcat:jdk8-corretto
#stop 
docker stop tomcat
#delete 
docker rm tomcat
#re-tag 
docker tag tomcat:jdk8-corretto n038060222/homework1:tomcat
#push
docker push n038060222/homework1:tomcat
