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
    echo
    echo "Installing I3-Gaps dependencies"
    sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake

    mkdir .local
    mkdir .local/share
    cd .local/share
    git clone https://www.github.com/Airblader/i3 i3-gaps
    cd i3-gaps

    autoreconf --force --install
    rm -rf build/
    mkdir -p build && cd build/

    ../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
    make
    sudo make install


    echo
    # https://benjames.io/2017/09/03/installing-i3-gaps-on-ubuntu-16-04/ maybe??
    # Clone i3-gaps https://github.com/Airblader/i3/wiki/Compiling-&-Installing
    # Install i3-gaps


    # option for additional tools
}

function coreInstall {
    echo "Installing core programs"

    # Installing core programs
    sudo apt install xorg ufw thunar mpv transmission compton redshift volumeicon-alsa wicd pulseaudio xfce4-power-manager

    echo
    echo "Please choose which Visual setup you want"
    echo "Choose from I3-Gaps and OpenBox"
    #Call i3Install or openboxInstall
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