#!/bin/sh

# Update of VM apt
sudo apt update -y

# Install Desktop environment
sudo apt install xfce4 -y

# Start desktop environment
sudo startxfce4 &

# Enough of black on white term
sudo apt install terminator -y

# Docker
sudo apt install docker.io -y
docker pull alpine
docker pull frrouting/frr

# GNS3
sudo apt install gns3 -y
