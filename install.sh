#!/bin/bash
RED='\033[0;31m'
NC='\033[0m' # No Color

echo 'installer version 0.0.007'

cd /usr/share/themes


PACKAGE="/usr/share/themes/Sunset-Dark-Grey-Magenta/"

if [[ -d $PACKAGE ]]; then
    echo "Already installed, to re-install remove the $PACKAGE dir"
    exit 1
else
    echo "Installing to $PACKAGE ..."
    sudo mkdir /usr/share/themes/Sunset-Dark-Grey-Magenta
    cd Sunset-Dark-Grey-Magenta
    git clone https://github.com/Henryws/oomox-Sunset-Dark-Grey-Magenta.git
    tar xvzf oomox-Sunset-Dark-Grey-Magenta.tar.gz

    echo Done
fi

exit 0
