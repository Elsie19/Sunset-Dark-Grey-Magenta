#!/bin/bash
RED='\033[0;31m'
NC='\033[0m' # No Color

#[major].[minor].[release].[build]
echo 'installer version 1.0.1.1'

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
    sudo mv chrome /usr/share/themes/Sunset-Dark-Grey-Magenta
    echo "moved theme directory chrome"
    sudo mv cinnamon /usr/share/themes/Sunset-Dark-Grey-Magenta
    echo "moved theme directory cinnamon"
    sudo mv gnome-shell /usr/share/themes/Sunset-Dark-Grey-Magenta
    echo "moved theme directory gnome-shell"
    sudo mv gtk-2.0 /usr/share/themes/Sunset-Dark-Grey-Magenta
    echo "moved theme directory gtk-2.0"
    sudo mv gtk-3.0 /usr/share/themes/Sunset-Dark-Grey-Magenta
    echo "moved theme directory gtk-3.0"
    sudo mv gtk-assets /usr/share/themes/Sunset-Dark-Grey-Magenta
    echo "moved theme directory gtk-assets"
    sudo mv gtk-icons /usr/share/themes/Sunset-Dark-Grey-Magenta
    echo "moved theme directory gtk-icons"
    sudo mv metacity-1 /usr/share/themes/Sunset-Dark-Grey-Magenta
    echo "moved theme directory metacity-1"
    sudo mv unity /usr/share/themes/Sunset-Dark-Grey-Magenta
    echo "moved theme directory unity"
    sudo mv xfwm4 /usr/share/themes/Sunset-Dark-Grey-Magenta
    echo "moved theme directory xfwm4"
    sudo mv COPYING /usr/share/themes/Sunset-Dark-Grey-Magenta
    echo "moved theme file COPYING"
    sudo mv index.theme /usr/share/themes/Sunset-Dark-Grey-Magenta
    echo "moved theme file index.theme"

    echo Done moving files/directories
    echo 'Applying theme'
    gsettings set org.gnome.desktop.interface gtk-theme 'Sunset-Dark-Grey-Magenta' && gsettings set org.gnome.desktop.wm.preferences theme 'Sunset-Dark-Grey-Magenta';
fi

exit 0
