#!/usr/bin/env bash

FILENAME='/usr/share/applications/google-chrome.desktop'
TEXT_TO_BE_ADDED='StartupWMClass=Google-chrome-stable'

if ! grep -Fxq "$TEXT_TO_BE_ADDED" $FILENAME
then
  sudo sed -i '/Name=Google Chrome/a \'$TEXT_TO_BE_ADDED $FILENAME
  sudo sed -i '/Name=New Window/a \'$TEXT_TO_BE_ADDED $FILENAME
  sudo sed -i '/Name=New Incognito Window/a \'$TEXT_TO_BE_ADDED $FILENAME
fi

