source ~/dotfiles/zsh/func.zsh

# Oh My Zsh Setup:
export ZSH=~/dotfiles/zsh/.oh-my-zsh
ZSH_CUSTOM=~/dotfiles/zsh/zsh_custom
ZSH_THEME="jonasleft"

plugins=(git extract jump z fzf)

# fzf setup:
# ----------
if [[ ! "$PATH" == */home/purtschert_j/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}${HOME}/.fzf/bin"
fi

# Auto-completion
[[ $- == *i* ]] && source "${HOME}/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
source "${HOME}/.fzf/shell/key-bindings.zsh"

# oh-my-zsh load:
# ---------------
source $ZSH/oh-my-zsh.sh

# ESC Key delay:
KEYTIMEOUT=1

# enable vi mode (already enabled with ohmyzsh plugins):
#bindkey -v

# load nord theme dir colords:
eval $(dircolors ~/.dir_colors)

# change capslock to esc key:
#setxkbmap -option caps:escape
#

# ------------------------------------
# ZSH Extension
# ------------------------------------
autoload zmv
alias zmv='noglob zmv'
alias zcp='noglob zmv -C'

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

source ${HOME}/.zshrc.local

