#!/bin/bash
RED='\033[0;31m'
NC='\033[0m' # No Color

#[major].[minor].[release].[build]
echo 'installer version 0.0.1.37'

cd /usr/share/themes


PACKAGE="/usr/share/themes/Sunset-Dark-Grey-Magenta/"

if [[ -d $PACKAGE ]]; then
    echo "Already installed, to re-install remove the $PACKAGE dir"
    exit 1
else
    echo "Installing to $PACKAGE ..."
    sudo mkdir /usr/share/themes/Sunset-Dark-Grey-Magenta
    cd /tmp
    wget https://github.com/Henryws/Sunset-Dark-Grey-Magenta/raw/master/oomox-Sunset-Dark-Grey-Magenta.tar.gz
    sudo tar xvzf oomox-Sunset-Dark-Grey-Magenta.tar.gz
    sudo mv oomox-Sunset-Dark-Grey-Magenta/* /usr/share/themes/Sunset-Dark-Grey-Magenta

    echo Done
fi

exit 0
