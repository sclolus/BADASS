#!/bin/sh

# Update of VM apt
sudo apt update -y

# Install Desktop environment
sudo apt install xfce4 -y

# Start desktop environment
sudo startxfce4 &

# Installing and configuring wireshark-common to avoid the confirmation screen
sudo apt install wireshark-common
yes | sudo dpkg reconfigure wireshark-common

# Enough of black on white term
sudo apt install terminator -y

# Docker
sudo apt install docker.io -y
docker pull alpine
docker pull frrouting/frr

# GNS3 (confirmation screen should now be avoided)
sudo apt install gns3 -y
