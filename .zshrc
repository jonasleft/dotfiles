source ~/dotfiles/func.zsh

ZSH_CUSTOM=~/dotfiles/zsh_custom
ZSH_THEME="jonasleft"

plugins=(git extract jump z fzf)

source $ZSH/oh-my-zsh.sh

# ESC Key delay:
KEYTIMEOUT=1

# enable vi mode (already enabled with ohmyzsh plugins):
#bindkey -v


# ------------------------------------
# Aliases:
# ------------------------------------

alias -s pdf=FoxitReader
