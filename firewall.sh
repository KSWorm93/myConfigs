#!/bin/bash
#################
#
# Firewall on/off
#
#################

if [ $1 = "off" ]; then
	sudo ufw disable
	sudo service ufw stop
elif [ $1 = "on" ]; then
	sudo ufw enable
	sudo service ufw start
elif [ $1 = "status" ]; then
	sudo ufw status
else
	echo "invalid argument - must be 'on' or 'off'"
fi