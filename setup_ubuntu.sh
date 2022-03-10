#!/bin/bash

## install ulauncher:
sudo add-apt-repository ppa:agornostal/ulauncher && sudo apt update && sudo apt install ulauncher

## XFCE configuration:

cfgpath=.config/xfce4/xfconf/xfce-perchannel-xml
cp -v xubuntu/$cfgpath/*.xml ../$cfgpath/

cfgpath=.config/autostart
cp -v xubuntu/$cfgpath/* ../$cfgpath/

cfgpath=.config/xfce4/terminal
cp -v xubuntu/$cfgpath/* ../$cfgpath/


# install KVM:
# https://linuxconfig.org/install-and-set-up-kvm-on-ubuntu-20-04-focal-fossa-linux

sudo apt install qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virt-manager
sudo adduser $USER kvm
sudo adduser $USER libvirt
sudo adduser $USER libvirt-qemu


# owncloud
# https://download.owncloud.com/desktop/ownCloud/stable/latest/linux/download/
wget -nv https://download.owncloud.com/desktop/ownCloud/stable/2.10/linux/Ubuntu_20.04/Release.key -O - | sudo apt-key add -
echo 'deb https://download.owncloud.com/desktop/ownCloud/stable/2.10/linux/Ubuntu_20.04/ /' | sudo tee -a /etc/apt/sources.list.d/owncloud.list
sudo apt update
sudo apt install owncloud-client

