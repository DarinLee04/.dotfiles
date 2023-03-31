#!/bin/bash

# remove .vimrc from home directory
cd ~
rm .vimrc

# remove "source∼/.dotfiles/bashrc custom" in the .bashrc file in the home directory
cd ~
sed 's/\source∼/.dotfiles/bashrc_custom\/""' .bashrc

# remove .TRASH from home directory
cd ~
rm .TRASH
