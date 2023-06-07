#!/bin/bash

sudo apt install terminator

# Launch terminator

# Installations
sudo apt update

# GNS3
sudo add-apt-repository ppa:gns3/ppa
sudo apt install gns3-gui

# Docker
sudo apt install docker.io

# Check existing docker containers
docker ps

# Permission error fix
sudo usermod -a -G docker badass
reboot

docker ps

# No containers

# Pull alpine and frr images
docker pull alpine
docker pull frrouting/frr

# Check available images :
docker images

# We should see alpine and frrouting/frr

docker ps

# No docker container launched

# Creation of alpine image :

docker run -it alpine

# Split term in two
# Run uname -a in alpine
# Run docker ps in the ubuntu shell
# Check if the container ID matches

# Install busybox in alpine
apk add busybox

# Commit alpine based container in a new image :
docker commit [container_name] alpine_image
docker stop [container_name]
docker images

# We should see our newly created image

# Creation of frrouting image :

# Run frr image :
docker run -d frrouting/frr

# Get container name
docker ps

# Connect to it via terminal
docker exec -it [container_name] sh

apk add busybox
