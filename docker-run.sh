#!/usr/bin/env bash

#build docker image
docker build -t nginx/server .

#list docker image
docker image list


#run containers
docker run -d -p 80:80 nginx/server
