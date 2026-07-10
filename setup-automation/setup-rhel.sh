#!/bin/bash

# Unregister and register the VM
subscription-manager clean
subscription-manager register --activationkey=12-5-22-instruqt --org=12451665 --force

# Install packages 
sudo dnf install -y buildah podman git

# Clone the app repo to the user directory
su - rhel -c "git clone https://github.com/ellisonleao/clumsy-bird"

dnf -y remove katello-ca-consumer-*
subscription-manager clean
subscription-manager register --activationkey=$ACTIVATION_KEY --org=$ORG_ID

dnf install -y buildah

echo "DONE" >> /root/post-run.log
