#!/bin/bash
#Install Script for .dotfiles
echo Probably should be root...just saying

#install NeoVim
apt install neovim

#install Plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#copy over init file
mkdir --parents ~/.config/nvim/
ln init.vim ~/.config/nvim/init.vim


