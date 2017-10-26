#!/bin/bash
user=${SUDO_USER:-$(whoami)}
USER_HOME=$(eval echo ~${SUDO_USER})

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
target=$USER_HOME/testpath

apt-get update && apt-get dist-upgrade -y
apt-get install zsh
chsh -s /bin/zsh



cp -p $DIR/.zshrc $target/.zshrc
cp -rp $DIR/.rcs $target/.rcs 
echo $target
ls -la $target
tree -a $target
rm -rf $target/*
rm -rf $target/.* 

