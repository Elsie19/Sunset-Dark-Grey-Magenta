#!/bin/bash
cd /usr/share/themes

git clone https://github.com/Henryws/Sunset-Dark-Grey-Magenta.git

cd Sunset-Dark-Grey-Magenta

sudo tar xvzf oomox-Sunset-Dark-Grey-Magenta.tar.gz

PACKAGE="/usr/share/themes/oomox-Sunset-Dark-Grey-Magenta/"

if [[ -d $PACKAGE ]]; then
    echo "Already installed, to re-install remove the $PACKAGE dir"
    exit 1
else
    echo "Installation in $PACKAGE ..."

    sudo mv oomox-Sunset-Dark-Grey-Magenta $PACKAGE

    echo Done
    cd /usr/share/themes
    rm -rf Sunet-Dark-Grey-Magenta

fi

exit 0
