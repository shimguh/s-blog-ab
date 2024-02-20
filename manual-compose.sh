#!/bin/bash

# rm & rmi
figlet remove all
sudo docker stop $(sudo docker ps -q)
sudo docker rm $(sudo docker ps -a -q)
sudo docker rmi $(sudo docker images -q)

figlet build
sudo docker build -t blog-a -f s-blog-a/Dockerfile s-blog-a
sudo docker build -t blog-b -f s-blog-b/Dockerfile s-blog-b

# lb build
sudo docker build -t lb -f lb/Dockerfile lb

# network
figlet network
sudo docker network rm abc
sudo docker network create abc

figlet run
sudo docker run -d --name s-blog-a --network=abc -p 8001:80 blog-a
sudo docker run -d --name s-blog --network=abc -p 8002:80 blog-b
sudo docker run -d --name lb --network=abc -p 8000:80 lb

figlet ps
sudo docker ps

sl -Fa
