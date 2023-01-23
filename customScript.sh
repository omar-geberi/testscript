#!/bin/bash

#install docker
wget -qO- "https://pgp.mit.edu/pks/lookup?op=get&search=0xee6d536cf7dc86e2d7d56f59a178ac6c6238f52e"
rpm --import "https://pgp.mit.edu/pks/lookup?op=get&search=0xee6d536cf7dc86e2d7d56f59a178ac6c6238f52e"
yum install -y yum-utils
yum-config-manager --add-repo https://packages.docker.com/$dockerVer/yum/repo/main/centos/7
yum install -y docker-engine
gpasswd -a $userName docker
systemctl start docker
systemctl enable docker
chmod +x /usr/local/bin/docker-machine
export PATH=$PATH:/usr/local/bin/
systemctl restart docker

#install git
yum update -y
yum install git

#run docker image for the Alpine basic linux image
docker container run alpine ls -l
