#!/usr/bin/env bash

# Don't run the script with 'sudo'

INSTALL='sudo apt-get install -y --force-yes'
ADD_REPOSITORY='sudo apt-add-repository -y'

# Update the repo
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

$INSTALL software-properties-common
$INSTALL python-software-properties

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
$INSTALL synapse
$INSTALL keepassx

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
$INSTALL transmission

# Terminal essentials
$INSTALL gnome-terminal
$INSTALL vim
$INSTALL zsh

# Development
$INSTALL openjdk-8-jdk
$INSTALL virtualbox
$INSTALL build-essential

# From third party repositories
$ADD_REPOSITORY ppa:philip.scott/elementary-tweaks
$ADD_REPOSITORY ppa:moka/daily
$ADD_REPOSITORY ppa:snwh/pulp
$ADD_REPOSITORY ppa:git-core/ppa
$ADD_REPOSITORY ppa:pipelight/stable
$ADD_REPOSITORY ppa:nilarimogard/webupd8
$ADD_REPOSITORY ppa:webupd8team/sublime-text-3
$ADD_REPOSITORY ppa:otto-kesselgulasch/gimp
$ADD_REPOSITORY ppa:linrunner/tlp
$ADD_REPOSITORY ppa:fossfreedom/indicator-sysmonitor
$ADD_REPOSITORY ppa:libreoffice/ppa
$ADD_REPOSITORY ppa:noobslab/apps
$ADD_REPOSITORY ppa:webupd8team/java
$ADD_REPOSITORY ppa:andrei-pozolotin/maven3

# Add google chrome repo
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'

# Add dropbox repo
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
sudo sh -c 'echo "deb [arch=amd64] http://linux.dropbox.com/ubuntu/ xenial main" > /etc/apt/sources.list.d/dropbox.list'

# Add Arc theme repo
wget -q -O - http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key | sudo apt-key add -
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' > /etc/apt/sources.list.d/arc-theme.list"

# Add canonical archive repo (this includes skype)
sudo sh -c 'echo "deb [arch=amd64] http://archive.canonical.com/ubuntu/ xenial partner" > /etc/apt/sources.list.d/canonical_partner.list'

# Add sbt repo
sudo sh -c 'echo "deb [arch=amd64] http://dl.bintray.com/sbt/debian /" > /etc/apt/sources.list.d/sbt.list'

# Add nodejs repo
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

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
$INSTALL paper-icon-theme
$INSTALL paper-gtk-theme
$INSTALL paper-cursor-theme

$INSTALL arc-theme
$INSTALL moka-gtk-theme
$INSTALL orchis-gtk-theme

# System
$INSTALL tlp tlp-rdw
$INSTALL indicator-sysmonitor
$INSTALL caffeine-plus

# Essentials
$INSTALL libreoffice

# Media
$INSTALL minitube
$INSTALL gimp
$INSTALL pipelight-multi
$INSTALL skype

# Dev and command line utilities
$INSTALL maven3
$INSTALL sbt
$INSTALL sublime-text-installer
$INSTALL nodejs
$INSTALL git
curl -L http://install.ohmyz.sh | sh

# Installation is done. Remove the unused pacakges.
sudo apt-get --purge autoremove
