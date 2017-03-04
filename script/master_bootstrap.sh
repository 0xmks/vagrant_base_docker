#!/bin/bash

# locale
sudo localectl set-locale LANG=ja_JP.utf8
sudo localectl status

# timezone
sudo timedatectl set-timezone Asia/Tokyo
sudo timedatectl status

# git
sudo yum install -y git

# epel-release
sudo yum install -y epel-release

# docker ( https://docs.docker.com/engine/installation/linux/centos/ ) 
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum-config-manager --enable docker-ce-edge
sudo yum update -y
sudo yum makecache fast
sudo yum install docker-ce -y
sudo docker version
sudo systemctl start docker
sudo docker run hello-world
sudo systemctl enable docker.service

