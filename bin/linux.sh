#!/bin/bash

# checks if uname output = "Linux" then appends the output from the error statement to linuxsetup.log, then exits
if ./uname | grep -q 'Linux'; then
	echo "error" >> linuxsetup.log
	exit
fi

# creates .TRASH directory in home directory
cd ~
mkdir .TRASH

# changes .vimrc to .bup_vimrc and echos the message to linuxsetup.log
cd ~
if ls -a | grep -q '.vimrc'; then
	mv .vimrc .bup_vimrc
	echo "the current .vimrc file ws changed to \".bup_vimrc\"" >> linuxsetup.log
fi

#overwrites the vimrc file to .vimrc in the home directory
cd ~
echo "" > "./vimrc" >> .vimrc
