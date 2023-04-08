#!/bin/bash

rm -f ~/.vimrc || true #removes .vimrc file
sed -i 's\source ~/.dotfiles/etc/bashrc_custom\\g' ~/.bashrc #deletes the string "source ~/.dotfiles/etc/bashrc_custom" from the file ~/.bashrc
rm -rf ~/.TRASH || true #removes .TRASH directory inside of home directory
