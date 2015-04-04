#!/usr/bin/env bash

FILENAME=$HOME'/.dropbox-dist/dropboxd'
TEXT_TO_BE_ADDED='XDG_CURRENT_DESKTOP=Unity'

if ! grep -Fxq "$TEXT_TO_BE_ADDED" $FILENAME
then
  sed -i '/PAR=/a\'$TEXT_TO_BE_ADDED $FILENAME
fi

