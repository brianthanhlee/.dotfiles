#!/bin/bash
#if statement for the errors
RESULT=$(uname -s)
s="Linux"
if [ $RESULT == $s ]; then
	echo "valid"
else

	echo "error invalid" >> linuxsetup.log
	exit

fi
#creates trash directory
mkdir -p ~/.TRASH

#rename vimrc if it is already there
mv ~/.vimrc ~/.bup_vimrc && echo "the current .vimrc file was changed to .bup_vimrc" >> linuxsetup.log

cat ~/.dotfiles/etc/vimrc > ~/.vimrc

echo source "~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

