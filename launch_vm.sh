#!/bin/sh

# Update of local apt
sudo apt update
# Installation of needed packages
sudo apt install virtualbox
sudo apt install vagrant

# Launch of VM
vagrant up --provision
# SSH connection to VM
vagrant ssh
