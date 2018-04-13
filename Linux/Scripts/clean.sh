#!/bin/bash
#################
#
# Clening script
#
#################

# Auto removing command
echo "***Auto removing"
sudo apt-get autoremove

# Auto cleaning command
echo "***Auto cleaning***"
sudo apt-get autoclean

# Cleaning command
echo "***Cleaning***"
sudo apt-get clean

# Cleaning trash
echo "***Showing files in ~/.local/share/Trash***"
ls -lR ~/.local/share/Trash/files # list files in trash
key="" # set key default

# check if there is a parameter and set key if not
if [ -z "$1" ]; then
	read -n1 -r -p "Do you want to delete these files? y/n " key
	echo ""
fi

# remove files if key=y
if [ "${1:-$key}" = 'y' ]; then
	echo "deleting files in ~/.local/share/Trash"
	rm -rf ~/.local/share/Trash/*
else
	echo "Nothing will be deleted"
fi
