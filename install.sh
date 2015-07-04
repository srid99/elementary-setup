#!/usr/bin/env bash

# Don't run the script with 'sudo'

INSTALL='sudo apt-get install -y'
ADD_REPOSITORY='sudo apt-add-repository -y'

# Update the repo
sudo apt-get update

# Browsers
$INSTALL firefox

# Disk utilities
$INSTALL gparted
$INSTALL gnome-disk-utility
$INSTALL baobab

# System monitors
$INSTALL gnome-system-monitor
$INSTALL indicator-multiload

# Command line utilities
$INSTALL xclip
$INSTALL locate
$INSTALL curl
$INSTALL wget
$INSTALL dconf-tools

# Media
$INSTALL vlc
$INSTALL flashplugin-installer
$INSTALL ttf-tamil-fonts

# Terminal essentials
$INSTALL gnome-terminal
$INSTALL vim
$INSTALL zsh

# Development
$INSTALL openjdk-7-jdk
$INSTALL maven
$INSTALL virtualbox

# From third party repositories
$ADD_REPOSITORY ppa:mpstark/elementary-tweaks-daily
$ADD_REPOSITORY ppa:numix/ppa

$ADD_REPOSITORY ppa:git-core/ppa
$ADD_REPOSITORY ppa:bumblebee/stable
$ADD_REPOSITORY ppa:chris-lea/node.js
$ADD_REPOSITORY ppa:skunk/pepper-flash
$ADD_REPOSITORY ppa:pipelight/stable
$ADD_REPOSITORY ppa:nilarimogard/webupd8
$ADD_REPOSITORY ppa:synapse-core/ppa
$ADD_REPOSITORY ppa:webupd8team/sublime-text-3
$ADD_REPOSITORY ppa:otto-kesselgulasch/gimp
$ADD_REPOSITORY ppa:keepassx/daily

# Add google chrome repo
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'

# Add dropbox repo
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
sudo sh -c 'echo "deb http://linux.dropbox.com/ubuntu/ utopic main" >> /etc/apt/sources.list.d/dropbox.list'

# Update again for the newly added repo's
sudo apt-get update

# Browsers
$INSTALL google-chrome-stable

# Tweaks and themes
$INSTALL elementary-tweaks 
$INSTALL numix-icon-theme-circle
$INSTALL numix-gtk-theme 

# Password manager
$INSTALL keepassx

# Nvidia graphics driver
$INSTALL bumblebee bumblebee-nvidia virtualgl linux-headers-generic

# Media
$INSTALL pepflashplugin-installer
$INSTALL minitube
$INSTALL gimp
$INSTALL pipelight-multi
$INSTALL dropbox

# Dev and command line utilities
$INSTALL sublime-text-installer
$INSTALL synapse
$INSTALL python-software-properties nodejs
$INSTALL git
curl -L http://install.ohmyz.sh | sh

# Installation is done. Remove the unused pacakges.
sudo apt-get --purge autoremove


