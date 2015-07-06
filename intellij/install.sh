#!/usr/bin/env bash

# Run this script from your '/.../intellij-location/bin' directory.

# Application name
APPLICATION=intellij-idea

# Application path 
APPLICATION_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

# Make application exeuctable
echo "Installing to /usr/bin folder, requires permission..."
sudo ln -nsf $APPLICATION_PATH/idea.sh /usr/bin/$APPLICATION
echo ""

# Create desktop entry
FILE_DESKTOP=$APPLICATION.desktop
touch $FILE_DESKTOP
echo "[Desktop Entry]" >> $FILE_DESKTOP
echo "Type=Application" >> $FILE_DESKTOP
echo "Encoding=UTF-8" >> $FILE_DESKTOP
echo "Name=Intellij" >> $FILE_DESKTOP
echo "GenericName=Code Editor" >> $FILE_DESKTOP
echo "Comment=Code Editor" >> $FILE_DESKTOP
echo "StartupWMClass=jetbrains-idea" >> $FILE_DESKTOP
echo "Exec=$APPLICATION" >> $FILE_DESKTOP
echo "Icon=intellij-idea-ultimate-edition"  >> $FILE_DESKTOP
echo "Categories=Development;Utilities;TextEditor;IDE" >> $FILE_DESKTOP
echo "Terminal=false" >> $FILE_DESKTOP

echo "Installing to Applications menu"
xdg-desktop-menu install $FILE_DESKTOP
xdg-desktop-menu forceupdate
echo ""

echo "Cleaning"
rm $FILE_DESKTOP
echo ""

echo "$APPLICATION is now installed on your desktop"
