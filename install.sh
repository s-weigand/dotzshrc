#!/bin/bash

# defining dirs
user=${SUDO_USER:-$(whoami)}
USER_HOME=$(eval echo ~${user})
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# install fonts
if [ ! -d $USER_HOME/.local/share/fonts ]; then
  mkdir -p $USER_HOME/.local/share/fonts;
fi
cp -p $DIR/SourceCodePro/*.otf $USER_HOME/.local/share/fonts/SourceCodePro/
fc-cache -f -v

# install zsh
apt-get update && apt-get dist-upgrade -y
apt-get install zsh -y
chsh -s $(grep /zsh$ /etc/shells | tail -1) $user

# copy config
cp -p $DIR/.zshrc $USER_HOME/.zshrc
cp -rp $DIR/.rcs $USER_HOME/.rcs 

