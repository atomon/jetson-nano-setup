#!/bin/sh
#NVIDIA official site
#https://docs.nvidia.com/deeplearning/frameworks/install-tf-jetson-platform/index.html

sudo apt-get update

# Install HDF5
sudo apt-get install libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev zip libjpeg8-dev

#Install and upgrade pip3
sudo apt-get install python3-pip
sudo pip3 install -U pip

#Install required Python packages
sudo pip3 install -U numpy grpcio absl-py py-cpuinfo psutil portpicker six mock requests gast h5py astor termcolor protobuf keras-applications keras-preprocessing wrapt google-pasta

#Install latest version of Tensorflow
sudo pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v42 tensorflow-gpu

#Uninstall Tensorflow
#pip3 uninstall -y tensorflow-gpu

sudo apt-get upgrade
