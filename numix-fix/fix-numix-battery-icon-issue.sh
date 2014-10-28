#!/usr/bin/env bash

#########################
# Fix the battery icon issue with Numix theme and elementaryOS.
# https://github.com/numixproject/numix-icon-theme/issues/107
# Seems like a never-ending issue.
# So temporarily let's not use the battery icons supplied by Numix but use the default from elementaryOS.
#########################

# Rename all the battery related icons to *.bck
sudo find /usr/share/icons/Numix/ -name '*battery*.svg' -exec sh -c 'mv "$1" "${1%.svg}.bck"' -- {} \;

# Update the index theme to use elementaryOS default icons 
sudo sed -i 's/Inherits=gnome,hicolor/Inherits=elementary/g' /usr/share/icons/Numix/index.theme

