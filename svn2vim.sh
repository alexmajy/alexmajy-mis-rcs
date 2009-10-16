#!/bin/bash

# This bash is used to update linux vim from svn alexmajy-mis-rcs directory.

SVN_DIR=$HOME/alexmajy-mis-rcs

read -p "Update *$HOME/[.vimrc|.vim]* from $SVN_DIR, <y/n>"

if [ "$REPLY" = "y" ]; then
    cp --force $SVN_DIR/_vimrc $HOME/.vimrc
    rm -rf $HOME/.vim
    cp -r $SVN_DIR/vimfiles $HOME/.vim
    find $HOME/.vim -type d -name ".svn" -print0 | xargs --null rm -rf
else
    echo "Have fun, bye!"
fi


