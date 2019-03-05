#!/bin/bash
#Install Script for .dotfiles
#probably should be root
if [[ $EUID -ne 0 ]]; then
	   echo "Probably should be root...just sayin'..." 
	      exit 1
      fi

#install Plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#copy over init file
mkdir --parents ~/.config/nvim/
ln init.vim ~/.config/nvim/init.vim


