#!/bin/bash

# Clone the app repo to the user directory
su - rhel -c "git clone https://github.com/ellisonleao/clumsy-bird"

echo "DONE" >> /root/post-run.log
