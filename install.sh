#!/bin/bash

# defining dirs
user=${SUDO_USER:-$(whoami)}
USER_HOME=$(eval echo ~${user})
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# install fonts
if [ ! -d $USER_HOME/.local/share/fonts ]; then
  mkdir -p $USER_HOME/.local/share/fonts;
fi

if [ ! -d $USER_HOME/.local/share/fonts/MesloLGS_NF ]; then
  mkdir -p $USER_HOME/.local/share/fonts/MesloLGS_NF;
fi

# call download fonts
( "$DIR/download_fonts.sh" )

cp -p $DIR/MesloLGS_NF/*.ttf $USER_HOME/.local/share/fonts/MesloLGS_NF/
fc-cache -f -v

# install zsh and curl
apt-get update && apt-get dist-upgrade -y
apt-get install zsh curl -y
chsh -s $(grep /zsh$ /etc/shells | tail -1) $user

# call update
( "$DIR/update.sh" )

# set Berlin as timezone
timedatectl set-timezone Europe/Berlin
