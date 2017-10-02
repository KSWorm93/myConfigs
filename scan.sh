#!/bin/bash
#################
#
# Scanning script
#
#################

#Update clamAV database
echo "***Updating clamAV databases***"
sudo freshclam

#Scan for rootkits
echo "***RootKit scanner***"
sudo chkrootkit

#Scan for virus and malware, 
#notify user with bell when infection found
#only show infeected files
#takes location param, or default whole system
echo "***Scanning ${1:-/}***"
sudo clamscan -r --bell -i --exclude-dir="^/sys" ${1:-/}

notify-send 'Virus Scan' 'Scan is completed.' --icon=dialog-information