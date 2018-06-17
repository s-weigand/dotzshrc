#!/bin/bash
user=${SUDO_USER:-$(whoami)}
USER_HOME=$(eval echo ~${user})

# install fonts
if [ ! -d $USER_HOME/.local/share/fonts ]; then
  mkdir -p $USER_HOME/.local/share/fonts;
fi
cp -p $DIR/SourceCodePro/*.otf $USER_HOME/.local/share/fonts/SourceCodePro/
fc-cache -f -v

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
target=$USER_HOME

# install zsh
apt-get update && apt-get dist-upgrade -y
apt-get install zsh -y
chsh -s $(grep /zsh$ /etc/shells | tail -1) $user

# copy config
cp -p $DIR/.zshrc $target/.zshrc
cp -rp $DIR/.rcs $target/.rcs 

