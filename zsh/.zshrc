source ~/dotfiles/zsh/func.zsh

# Oh My Zsh Setup:
export ZSH=~/dotfiles/zsh/.oh-my-zsh
ZSH_CUSTOM=~/dotfiles/zsh/zsh_custom
ZSH_THEME="jonasleft"

plugins=(git extract jump z fzf)

source $ZSH/oh-my-zsh.sh

# ESC Key delay:
KEYTIMEOUT=1

# enable vi mode (already enabled with ohmyzsh plugins):
#bindkey -v

# load nord theme dir colords:
eval $(dircolors ~/.dir_colors)

# change capslock to esc key:
setxkbmap -option caps:escape
# ------------------------------------
# Aliases:
# ------------------------------------

alias -s pdf=FoxitReader

# xclip:
alias c='xclip -selection clipboard'
alias v='xclip -selection clipboard -o'
# change to clipboard directory:
alias cdv='cd `xclip -selection clipboard -o`'
# change to git root directory:
alias cdg='cd $(git rev-parse --show-toplevel)'