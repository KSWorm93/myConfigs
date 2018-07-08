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

function copyConfigs {
    echo
    echo "Copying config files to their respective places"
    mkdir ~/.config/
    mkdir ~/.config/polybar
    mkdir ~/.config/dunst
    
    cp ~/myConfigs/Linux/dotfiles/polybar/* ~/.config/polybar/
    cp ~/myConfigs/Linux/dotfiles/redshift/* ~/.config/
    cp ~/myConfigs/Linux/dotfiles/compton/* ~/.config/
    cp ~/myConfigs/Linux/dotfiles/dunst/* ~/.config/dunst
    cp ~/myConfigs/Linux/dotfiles/.bash_aliases ~/
    cp ~/myConfigs/Linux/dotfiles/.Xresources1 ~/
}

function openboxInstall {
    echo "Installing OpenBox"



    # option for additional tools
}

function i3Install {
    echo
    echo "Installing i3-Gaps dependencies"
    sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake

    echo
    echo "Installing i3-Gaps"
    mkdir ~/.local
    mkdir ~/.local/share
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
    echo "Moving i3 config file"
    mkdir ~/.config/i3
    cp ~/myConfigs/Linux/dotfiles/i3/* ~/.config/i3/
}

function installPolybar {
    echo
    echo "Installing polybar dependencies"
    sudo apt install cairo libxcb python2 xcb-proto xcb-util-image xcb-util-wm cmake cmake-data pkg-config xcb-util-cursor

    echo
    echo "Installing polybar"
    mkdir ~/.local
    mkdir ~/.local/share
    cd .local/share
    git clone --branch 3.1.0 --recursive https://github.com/jaagr/polybar
    mkdir polybar/build
    cd polybar/build
    cmake ..
    sudo make install

}

function coreInstall {
    echo "Installing core programs"
    sudo apt update
    # Installing core programs

    # xinit
    # some other stuff preventing me from running startx after install
    sudo apt install xorg xserver-xorg xterm ufw thunar mpv qbittorrent compton redshift volumeicon-alsa wicd pulseaudio xfce4-power-manager build-essential dunst
}

function devInstall {
    echo "Installing developer tools"
}

# Installing programs
coreInstall
installPolybar
# Copy configs
copyConfigs

echo
echo "Please choose which Visual setup you want"
echo "Choose from I3-Gaps and OpenBox"
#Call i3Install or openboxInstall
i3Install

