#!/bin/bash

## install ulauncher:

sudo add-apt-repository ppa:agornostal/ulauncher && sudo apt update && sudo apt install ulauncher

cfgpath=.config/xfce4/xfconf/xfce-perchannel-xml
cp -v xubuntu/$cfgpath/*.xml ../$cfgpath/

cfgpath=.config/autostart
cp -v xubuntu/$cfgpath/* ../$cfgpath/

cfgpath=.config/xfce4/terminal
cp -v xubuntu/$cfgpath/* ../$cfgpath/



