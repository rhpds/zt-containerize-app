#!/bin/bash

# Clone the app repo to the user directory
su - rhel -c "git clone https://github.com/ellisonleao/clumsy-bird"

subscription-manager clean
subscription-manager register --activationkey=$ACTIVATION_KEY --org=$ORG_ID

dnf install -y buildah

echo "DONE" >> /root/post-run.log
