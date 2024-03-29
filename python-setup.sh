#!/bin/sh
#Install same library

sudo apt-get update

# Install and upgrade pip3
sudo apt-get install python3-pip
sudo pip3 install -U pip

# Install python packages
sudo apt-get install python3-pil
sudo apt-get install python3-matplotlib

# Install jupyter
sudo pip3 install jupyter

# Install avahi daemon for .local access
sudo apt-get install avahi-daemon

#Install GPU Graph
cd
git clone https://github.com/JetsonHacksNano/gpuGraph

#Install Swap File
git clone https://github.com/JetsonHacksNano/installSwapfile
cd installSwapfile
./installSwapfile.sh
cd

sudo apt-get upgrade
