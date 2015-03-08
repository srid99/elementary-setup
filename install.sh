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
$INSTALL virtualbox-4.3

# From third party repositories

$ADD_REPOSITORY ppa:versable/elementary-update
$ADD_REPOSITORY ppa:numix/ppa
$ADD_REPOSITORY ppa:moka/stable
$ADD_REPOSITORY ppa:fsvh/pacifica-icon-theme

$ADD_REPOSITORY ppa:alexeftimie/ppa
$ADD_REPOSITORY ppa:git-core/ppa
$ADD_REPOSITORY ppa:bumblebee/stable
$ADD_REPOSITORY ppa:chris-lea/node.js
$ADD_REPOSITORY ppa:skunk/pepper-flash
$ADD_REPOSITORY ppa:pipelight/stable
$ADD_REPOSITORY ppa:nilarimogard/webupd8
$ADD_REPOSITORY ppa:synapse-core/ppa
$ADD_REPOSITORY ppa:webupd8team/sublime-text-3
$ADD_REPOSITORY ppa:otto-kesselgulasch/gimp

# Add google chrome repo
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'

# Update again for the newly added repo's
sudo apt-get update

# Browsers
$INSTALL google-chrome-stable

# Tweaks and themes
$INSTALL elementary-tweaks elementary-plank-themes super-wingpanel
$INSTALL numix-icon-theme-circle
$INSTALL faba-icon-theme moka-icon-theme faba-mono-icons
$INSTALL pacifica-icon-theme

# System monitors
$INSTALL indicator-sysmonitor

# Nvidia graphics driver
$INSTALL bumblebee bumblebee-nvidia virtualgl linux-headers-generic

# Media
$INSTALL pepflashplugin-installer
$INSTALL minitube
$INSTALL gimp
$INSTALL pipelight-multi

# Dev and command line utilities
$INSTALL sublime-text-installer
$INSTALL synapse
$INSTALL python-software-properties nodejs
$INSTALL git
curl -L http://install.ohmyz.sh | sh

# Installation is done. Remove the unused pacakges.
sudo apt-get --purge autoremove


