#!/bin/bash

# Clone the app repo to the user directory
# Unregister and register the VM
subscription-manager clean
subscription-manager register --activationkey=12-5-22-instruqt --org=12451665 --force

su - rhel -c "git clone https://github.com/ellisonleao/clumsy-bird"

echo "DONE" >> /root/post-run.log
