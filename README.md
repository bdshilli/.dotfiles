# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## vimrc
This is my custom .vimrc configuration for Vim.
	For VIM:
		enables syntax highlighting
		enables numbered lines
		enables autoindented lines
		enables ruler
		sets color to elflord
	For "make" type files:
		sets shiftwidth to 0
		sets softtabstop to 0
		sets noexpandtab1 syntax on
## bashrc_custom
This is my custom .bashrc configuration for Bash.
	Defined Aliases:
	cdd = cd ..
	lsa = ls -A
	lsl = ls -l
	lsal = ls -Al
	cdelab = ssh -p 222 username@129.252.130.???
	trash = mv -t ~/.TRASH
	rmtrash = rm -rf ~/.TRASH/*
## linux.sh
After checking for the right OS, this edits the .vimrc and .bashrc files in the home directory
and creates a .TRASH file if one doesnt exist
## cleanup.sh
Removes the edits made in the .bashrc file and deletes the .vimrc file and .TRASH directory
## Makefile
Runs the linux.sh and cleanup.sh scripts
