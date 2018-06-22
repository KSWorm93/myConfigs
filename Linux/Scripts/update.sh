#!/bin/bash
#################
#
# Update script
#
#################

#Update ppa list
echo "***Updating***"
sudo apt-get update

#Upgrade packages
echo "***Upgrading***"
sudo apt-get upgrade
