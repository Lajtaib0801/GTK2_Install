#!/bin/bash

#Preps
sudo apt update
sudo apt install wget -y
mkdir ~/gtk2
cd ~/gtk2

#Install deps.

sudo apt install libglib2.0-dev libsdl-pango-dev libgdk-pixbuf2.0-dev libatk* libcairo2 libcairo2-dev gcc gcc-multilib gobject-introspection -y


#Get the source of gtk2

wget https://launchpad.net/ubuntu/+archive/primary/+sourcefiles/gtk+2.0/2.24.33-2ubuntu2/gtk+2.0_2.24.33.orig.tar.xz
tar -xvf gtk+2.0_2.24.33.orig.tar.xz
cd gtk+-2.24.33
./configure
make
sudo make install