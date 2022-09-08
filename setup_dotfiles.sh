#!/bin/bash

# install packages:
sudo apt update
sudo apt install -y stow git vim-gtk tmux ripgrep curl zsh alacritty

# Clone repo:
git clone --recursive https://github.com/jonasleft/dotfiles.git $HOME/dotfiles
cd $HOME/dotfiles

#xfce nord colorscheme:
#mkdir -p ~/.local/share/xfce4/terminal/colorschemes
#cp -v xfce/nord-xfce-terminal/src/nord.theme ~/.local/share/xfce4/terminal/colorschemes/

# stow behavior:
stow stow

# git config:
stow git
touch ~/.gitconfig.local

# zsh:
# -------------
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

# Vim:
# -------------
mkdir -p ~/.vim/autoload
curl -fLo ~/dotfiles/vim/.vim/autoload/plug.vim \
  --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
stow vim
vim +'PlugInstall --sync' +'qa!'

# Tmux:
# -------------
stow tmux

# Alacritty:
# -------------
stow alacritty


# k - the better l
#mkdir -p ~/dotfiles/zsh/zsh_custom/plugins
#dest=~/dotfiles/zsh/zsh_custom/plugins/k 
#if [ -d $dest ]; then
#  git --git-dir ${dest}/.git pull
#else
#  git clone --depth 1 https://github.com/supercrabtree/k $dest
#fi
