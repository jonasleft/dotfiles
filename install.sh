#!/bin/bash

function append {
  filename=$1
  str=$2
  touch "$filename"
  grep -qx "$str" $filename || printf "\n$str\n\n" >> ~/.zshrc
}

echo "Install .zshrc"
append "$HOME/.zshrc" "source ~/dotfiles/.zshrc"

