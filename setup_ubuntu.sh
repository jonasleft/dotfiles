#!/bin/bash

## install ulauncher:

sudo add-apt-repository ppa:agornostal/ulauncher && sudo apt update && sudo apt install ulauncher

## XFCE settings:

cfgpath=.config/xfce4/xfconf/xfce-perchannel-xml
cp -v xubuntu/$cfgpath/*.xml ../$cfgpath/

cfgpath=.config/autostart
cp -v xubuntu/$cfgpath/* ../$cfgpath/

cfgpath=.config/xfce4/terminal
cp -v xubuntu/$cfgpath/* ../$cfgpath/


## Owncloud:

wget -nv https://download.owncloud.com/desktop/ownCloud/stable/2.10/linux/Ubuntu_21.10/Release.key -O - | sudo apt-key add -
echo 'deb https://download.owncloud.com/desktop/ownCloud/stable/2.10/linux/Ubuntu_21.10/ /' | sudo tee -a /etc/apt/sources.list.d/owncloud.list
sudo apt update
sudo apt install owncloud-client


