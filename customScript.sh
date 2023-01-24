#!/bin/bash

#install docker
yum install deltarpm
yum update
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
    
yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin

systemctl start docker
systemctl enable docker


#install git
yum update -y
yum install git

#run docker image for the Alpine basic linux image
docker container run alpine ls -l
