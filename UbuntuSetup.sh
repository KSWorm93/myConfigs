#!/bin/bash
#################
#
# New Ubuntu
# Install
#
#################
echo "You are about to setup your Ubuntu system."
echo "Please confirm you want to proceed"
# yes / no - option
# proceed or exit

function openboxInstall {
    echo "Installing OpenBox"



    # option for additional tools
}

function i3Install {
    echo "Installing I3-Gaps"



    # option for additional tools
}

function coreInstall {
    echo "Installing core programs"

    # Installing core programs
    sudo apt install xorg ufw thunar mpv vlc transmission compton redshift volumeicon wicd pulseaudio xfce4-power-manager

    echo "Please choose which Visual setup you want"
    echo "Choose from I3-Gaps and OpenBox"
    #Call i3Install og openboxInstall
}

function devInstall {
    echo "Installing developer tools"
}


# Installing programs
coreInstall


# Copy configs
# Choose to copy config files
# Actual Copy 


# Update, Upgrade?