#!/bin/bash
RED='\033[0;31m'
NC='\033[0m' # No Color


printf "Installer version ${RED}0.0.1\n"

cd /tmp

git clone https://github.com/Henryws/Sunset-Dark-Grey-Magenta.git

PACKAGE="/usr/share/themes/oomox-Sunset-Dark-Grey-Magenta/"

if [[ -d $PACKAGE ]]; then
    echo "Already installed, to re-install remove the $PACKAGE dir"
    exit 1
else
    echo "Installing to $PACKAGE ..."
    #sudo mkdir /usr/share/themes/oomox-Sunset-Dark-Grey-Magenta
    
    tar xvzf Sunset-Dark-Grey-Magenta.tar.gz $PACKAGE

    echo Done
fi

exit 0
