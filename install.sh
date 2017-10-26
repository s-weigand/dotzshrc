#!/bin/bash
user=${SUDO_USER:-$(whoami)}
USER_HOME=$(eval echo ~${user})

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
target=$USER_HOME

apt-get update && apt-get dist-upgrade -y
apt-get install zsh
chsh -s $(grep /zsh$ /etc/shells | tail -1) $user

cp -p $DIR/.zshrc $target/.zshrc
cp -rp $DIR/.rcs $target/.rcs 

