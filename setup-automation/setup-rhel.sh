#!/bin/bash

# Unregister and register the VM
subscription-manager clean
subscription-manager register --activationkey=12-5-22-instruqt --org=12451665 --force

# Install packages 
sudo dnf install -y buildah podman

# Clone the app repo to the user directory
su - rhel -c "git clone https://github.com/ellisonleao/clumsy-bird"

echo "DONE" >> /root/post-run.log
