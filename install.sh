#!/bin/bash
echo 'installer version 0.0.1'

cd /tmp

git clone https://github.com/Henryws/Sunset-Dark-Grey-Magenta.git

PACKAGE="/usr/share/themes/oomox-Sunset-Dark-Grey-Magenta/"

if [[ -d $PACKAGE ]]; then
    echo "Already installed, to re-install remove the $PACKAGE dir"
    exit 1
else
    echo "Installing to $PACKAGE ..."
    sudo mkdir /usr/share/themes/oomox-Sunset-Dark-Grey-Magenta
    sudo tar xvzf oomox-Sunset-Dark-Grey-Magenta.tar.gz $PACKAGE

    echo Done
fi

exit 0
