#!/bin/bash
SERVICE=mariadb 
VERSION=10.1.19

read -p "Press [Enter] to build $SERVICE:$VERSION"
docker build -t docker-registry.cesga.es:5000/$SERVICE:$VERSION .

read -p "Press [Enter] key to push the image to the local registry"
docker push docker-registry.cesga.es:5000/$SERVICE:$VERSION
