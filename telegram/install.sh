#!/usr/bin/env bash

# Application name
APPLICATION=telegram

# Application path 
APPLICATION_PATH=/appl/software/$APPLICATION

# Download Telegram
wget https://tdesktop.com/linux -O /tmp/$APPLICATION.tar.gz

# Extract it in temp directory
tar -xvf /tmp/$APPLICATION.tar.gz -C /tmp/

# Move to a place where you like
mv /tmp/Telegram $APPLICATION_PATH

# Make application exeuctable
echo "Installing to /usr/bin folder, requires permission..."
sudo ln -nsf $APPLICATION_PATH/Telegram /usr/bin/$APPLICATION
echo ""

# Create desktop entry
FILE_DESKTOP=/tmp/$APPLICATION-$APPLICATION.desktop
touch $FILE_DESKTOP
echo "[Desktop Entry]" >> $FILE_DESKTOP
echo "Type=Application" >> $FILE_DESKTOP
echo "Name=Telegram" >> $FILE_DESKTOP
echo "GenericName=Chat" >> $FILE_DESKTOP
echo "Comment=Chat" >> $FILE_DESKTOP
echo "Exec=$APPLICATION" >> $FILE_DESKTOP
echo "Icon=$APPLICATION" >> $FILE_DESKTOP
echo "Categories=Utilities;InstantMessaging" >> $FILE_DESKTOP
echo "Terminal=false" >> $FILE_DESKTOP

echo "Installing to Applications menu"
xdg-desktop-menu install $FILE_DESKTOP
xdg-desktop-menu forceupdate
echo ""

echo "Cleaning"
rm $FILE_DESKTOP
echo ""

echo "'$APPLICATION' is now installed on your desktop"
