#!/bin/bash

# install packages:
echo "* APT"
echo "**************"

sudo apt update
sudo apt install -y stow git vim-gtk tmux ripgrep curl zsh alacritty neofetch

#xfce nord colorscheme:
#mkdir -p ~/.local/share/xfce4/terminal/colorschemes
#cp -v xfce/nord-xfce-terminal/src/nord.theme ~/.local/share/xfce4/terminal/colorschemes/

# stow behavior:
stow stow

# git config:
echo "* Git"
echo "**************"
stow git
touch ~/.gitconfig.local

echo "* ZSH"
echo "**************"
echo "set default shell to zsh:"
sudo chsh -s /bin/zsh root
sudo chsh -s /bin/zsh $USER

# Create local config files if not exist:
touch ~/.zshrc.local

# fzf
if [ -d ~/.fzf ]; then
  git --git-dir ~/.fzf/.git pull
else
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
fi
~/.fzf/install --bin

stow zsh

echo "* Vim"
echo "**************"
mkdir -p ~/.vim/autoload
curl -fLo ~/dotfiles/vim/.vim/autoload/plug.vim \
  --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
stow vim
vim +'PlugInstall --sync' +'qa!'

echo "* Tmux"
echo "**************"
stow tmux

echo "* Alactritty"
echo "**************"
stow alacritty


echo "**************"
echo "*    DONE    *"
echo "**************"

# k - the better l
#mkdir -p ~/dotfiles/zsh/zsh_custom/plugins
#dest=~/dotfiles/zsh/zsh_custom/plugins/k 
#if [ -d $dest ]; then
#  git --git-dir ${dest}/.git pull
#else
#  git clone --depth 1 https://github.com/supercrabtree/k $dest
#fi
