#!/bin/bash

OS=$(uname) #sends an error and exits the program if the OS isn't linux
if [ "$OS" != "Linux" ]
then
	echo "incorrect operating system" >> linuxsetup.log
	exit
fi

[ ! -d ~/.TRASH ] && mkdir ~/.TRASH #creates a .TRASH directory if none exists 

if [ -d ~/.vimrc ] #renames .vimrc to .bup_vimrc
then
	mv ~/.vimrc ~/.bup_vimrc
	echo "the current .vimrc file was changed to '.bup_vimrc'." >> linuxsetup.log
fi
cp ~/.dotfiles/etc/vimrc ~/.vimrc #overwrites the ~/.vimrc file with the contents of the ~/.dofiles/etc/vimrc file
echo 'source ~/.dotfiles/etc/bashrc_custom' >> ~/.bashrc #prints the line "source ~./dotfiles.etc.bashrc_custom" in the file ~/.bashrc
