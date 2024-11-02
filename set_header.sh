#!/bin/bash
# ./set_header.sh

# Set variables

if [ ! -z "$USER" ]
then
    echo "USER=`/usr/bin/git config user.name`" >> ~/.zshrc
    echo "export USER" >> ~/.zshrc
fi

if [ ! -z "$GROUP" ]
then
    echo "GROUP=`/usr/bin/id -gn $user`" >> ~/.zshrc
    echo "export GROUP" >> ~/.zshrc
fi

if [ ! -z "$MAIL" ]
then
    echo "MAIL=`/usr/bin/git config user.email`" >> ~/.zshrc
    echo "export MAIL" >> ~/.zshrc
fi

mkdir -p ~/.vim/plugin

# Add stdheader to vim plugins
cp plugin/stdheader.vim ~/.vim/plugin/

source ~/.zshrc
