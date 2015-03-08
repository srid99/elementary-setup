#!/usr/bin/env bash

##########################
# In case if any other issue araises then this script could be helpful to revert back the fix
##########################

# Undo renaming all battery related icons to their original name (rename from *.bck to *.svg)
sudo find /usr/share/icons/Numix/ -name '*battery*.bck' -exec sh -c 'mv "$1" "${1%.bck}.svg"' -- {} \;

# Inherit gnome and hicolor themes which is the default inherits of Numix theme
sudo sed -i 's/Inherits=elementary/Inherits=gnome,hicolor/g' /usr/share/icons/Numix/index.theme

