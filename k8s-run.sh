#!/usr/bin/env bash

#create volume
sudo mkdir -p /data/app


#create persistent volume
kubectl create -f persistentvolume.yml

#claim volume
kubectl create -f persistentvolumeclaim.yml


#deployment
kubectl create -f deployment.yml


#create service
kubectl create -f service.yml