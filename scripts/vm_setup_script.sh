#!/bin/sh

# Set vagrant user's password to "vagrant"
echo vagrant | sed 's/.*/\0\n\0/' | sudo passwd -q vagrant

export DEBIAN_FRONTEND=noninteractive

apt update -y
apt install -y python3-pip python3-pyqt5 python3-pyqt5.qtsvg \
python3-pyqt5.qtwebsockets \
qemu qemu-kvm qemu-utils libvirt-clients libvirt-daemon-system virtinst \
wireshark xtightvncviewer apt-transport-https \
ca-certificates curl gnupg2 software-properties-common

# Install GNOME Desktop Environment
apt install gdm3 -y

# Enough of black on white term
apt install terminator -y

# Docker installation + Images pull
apt install docker.io -y
docker pull alpine
docker pull frrouting/frr

# GNS3 Installation
pip3 install gns3-server
pip3 install gns3-gui

# Makes GNS3 binaries available in the whole fs.
export PATH=$PATH:/home/vagrant/.local/bin

# Launch GNS3 server in order to be able to open GUI directly.
gns3server

# Launch GNOME Desktop Environment
systemctl start gdm3
