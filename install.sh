#!/bin/bash
#Install Script for .dotfiles
echo Probably should be root...just saying

#install NeoVim
apt install neovim

#install Plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "Plug Installed!"

#copy over init file
mkdir --parents ~/.config/nvim/
ln init.vim ~/.config/nvim/init.vim
echo "Init file copied!"
echo "Installing plugins..."

echo "You may need to install a Nerd Font in order for everything to work okay"
nvim +PlugInstall

echo "Applying Windows Terminal customizations"
echo "Modify as necessary: "
echo "mv settings.json /mnt/c/Users/JeffBenson/AppData/Local/Packages/Microsoft.WindowsTerminal<etc>/LocalState/settings.json"
