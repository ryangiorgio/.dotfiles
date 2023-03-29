#!/bin/bash
if [ -f ~/.vimrc ]; then
    rm ~/.vimrc #Removes vimrc file from home directory.
fi
if [ -f ~/.bashrc ]; then
    echo " " > ~/.bashrc #Removes specified line from .bashrc in home directory.
fi
if [ -d ~/.TRASH ]; then
    rm -r ~/.TRASH #Removes .TRASH directory in home directory.
fi
