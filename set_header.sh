#!/bin/bash
# ./set_header.sh

# Set variables

SHRC=~/.bashrc	#chance if you use another shell (bash is the default)

if [ ! -z "$USER" ]
then
    echo "USER=`/usr/bin/git config user.name | tr ' ' '_'`" >> $SHRC
    echo "export USER" >> $SHRC
fi

if [ ! -z "$GROUP" ]
then
    echo "GROUP=`/usr/bin/id -gn $user`" >> $SHRC
    echo "export GROUP" >> $SHRC
fi

if [ ! -z "$MAIL" ]
then
    echo "MAIL=`/usr/bin/git config user.email`" >> $SHRC
    echo "export MAIL" >> $SHRC
fi

mkdir -p ~/.vim/plugin

# Add stdheader to vim plugins
#cp plugin/stdheader.vim ~/.vim/plugin/
cp plugin/stdheader.vim ~/.local/share/nvim/site/pack/plugins/start/

source $SHRC
