#!/usr/bin/env bash

# Don't run the script with 'sudo'

INSTALL='sudo apt-get install -y --force-yes'
ADD_REPOSITORY='sudo apt-add-repository -y'

# Update the repo
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

# Browsers
$INSTALL firefox

# Disk utilities
$INSTALL gparted
$INSTALL gnome-disk-utility
$INSTALL baobab

# System monitors
$INSTALL gnome-system-monitor
$INSTALL indicator-multiload

# System utilities
$INSTALL dconf-tools
$INSTALL seahorse
$INSTALL htop
$INSTALL wmctrl

# Command line utilities
$INSTALL xclip
$INSTALL locate
$INSTALL curl
$INSTALL wget
$INSTALL httpie
$INSTALL tree
$INSTALL parallel

# Media
$INSTALL vlc
$INSTALL flashplugin-installer
$INSTALL ttf-tamil-fonts
$INSTALL transmission

# Terminal essentials
$INSTALL gnome-terminal
$INSTALL vim
$INSTALL zsh

# Development
$INSTALL openjdk-7-jdk
$INSTALL virtualbox
$INSTALL build-essential

# From third party repositories
$ADD_REPOSITORY ppa:mpstark/elementary-tweaks-daily
$ADD_REPOSITORY ppa:moka/stable
$ADD_REPOSITORY ppa:captiva/ppa
$ADD_REPOSITORY ppa:cybre/elementaryplus

$ADD_REPOSITORY ppa:justsomedood/justsomeelementary
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
$ADD_REPOSITORY ppa:linrunner/tlp
$ADD_REPOSITORY ppa:fossfreedom/indicator-sysmonitor
$ADD_REPOSITORY ppa:libreoffice/ppa
$ADD_REPOSITORY ppa:w-vollprecht/ppa
$ADD_REPOSITORY ppa:noobslab/apps

$ADD_REPOSITORY "deb http://ppa.launchpad.net/natecarlson/maven3/ubuntu precise main"

# Add google chrome repo
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'

# Add dropbox repo
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
sudo sh -c 'echo "deb http://linux.dropbox.com/ubuntu/ trusty main" > /etc/apt/sources.list.d/dropbox.list'

# Add Arc theme repo
wget -q -O - http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_15.04/Release.key | sudo apt-key add -
sudo sh -c 'echo "deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_15.04/ /" > /etc/apt/sources.list.d/arc-theme.list'

# Add canonical archive repo (this includes skype)
sudo sh -c 'echo "deb http://archive.canonical.com/ubuntu/ trusty partner" > /etc/apt/sources.list.d/canonical_partner.list'

# Add sbt repo
echo "deb http://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list

# Update again for the newly added repo's
sudo apt-get update

$INSTALL libcanberra-gtk-module

# Browsers
$INSTALL google-chrome-stable

# Tweaks and themes
$INSTALL elementary-tweaks
$INSTALL faba-icon-theme
$INSTALL faba-mono-icons
$INSTALL moka-icon-theme
$INSTALL captiva-icon-theme
$INSTALL elementaryplus

$INSTALL arc-theme
$INSTALL moka-gtk-theme
$INSTALL orchis-gtk-theme

# Password manager
$INSTALL keepassx

# System
$INSTALL tlp tlp-rdw
$INSTALL indicator-sysmonitor
$INSTALL caffeine-plus
$INSTALL feedreader

# Nvidia graphics driver
$INSTALL bumblebee bumblebee-nvidia virtualgl linux-headers-generic

# Essentials
$INSTALL libreoffice
$INSTALL uberwriter

# Media
$INSTALL pepflashplugin-installer
$INSTALL minitube
$INSTALL gimp
$INSTALL pipelight-multi
$INSTALL dropbox
$INSTALL skype

# Dev and command line utilities
$INSTALL maven3
$INSTALL sbt
$INSTALL sublime-text-installer
$INSTALL synapse
$INSTALL python-software-properties nodejs
$INSTALL git
curl -L http://install.ohmyz.sh | sh

# Installation is done. Remove the unused pacakges.
sudo apt-get --purge autoremove
