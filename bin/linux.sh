#!/bin/bash

# Check if operating system is Linux; if it is not, print error message to log and exit script
if [ "$(uname -s)" != "Linux" ]; then echo "ERROR: Operating system is not Linux" >> linuxsetup.log && exit 1; fi

# Make trash directory in root/home directory
mkdir ~/.TRASH

# Rename .vimrc to .bup_vimrc in the home directory
mv ~/.vimrc ~/.bup_vimrc

# Print a statement to the log that says that .vimrc has been renamed
echo ".vimrc has been renamed to .bup_vimrc" >> linuxsetup.log

# Makes a new .vimrc in root directory
touch ~/.vimrc

# Print the output of the .vimrc file in the .dotfiles directory to the new .vimrc file in the home directory
cp ~/.dotfiles/etc/vimrc ~/.vimrc

# Send specified string to .bashrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
