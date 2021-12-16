#!/bin/bash
#Install Script for .dotfiles
echo Probably should be root...just saying
sleep 5

#install NeoVim
apt install neovim zsh

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

#Copy zsh config
ln zshrc ~/.zshrc
echo "Setting up Oh My Zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "copying Powerlevel10k theme"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
echo "restart the terminal, and run p10k configure to finish"

echo "Applying Windows Terminal customizations"
echo "Modify as necessary: "
echo "mv settings.json /mnt/c/Users/JeffBenson/AppData/Local/Packages/Microsoft.WindowsTerminal<etc>/LocalState/settings.json"
