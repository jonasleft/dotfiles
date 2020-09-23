#!/bin/bash

stow stow
stow git

# zsh:
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --bin
stow zsh

#Vim:
mkdir -p ~/.vim/autoload
curl -fLo ~/dotfiles/vim/.vim/autoload/plug.vim \
  --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +'PlugInstall --sync' +'qa!'
stow vim

# Tmux:
mkdir -p ~/.tmux/plugins
stow tmux

