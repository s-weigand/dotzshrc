#!/bin/bash

# defining dirs
user=${SUDO_USER:-$(whoami)}
USER_HOME=$(eval echo ~${user})
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# update to latest version
cd $DIR
git pull origin main

# copy config
cp -p $DIR/.zshrc $USER_HOME/.zshrc
cp -rp $DIR/.rcs/. $USER_HOME/.rcs/

curl -L git.io/antigen > $USER_HOME/.rcs/antigen.zsh

cd ~
