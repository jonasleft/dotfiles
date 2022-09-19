# Load Plugins:

source ${HOME}/dotfiles/zsh/func.zsh
source ${HOME}/dotfiles/zsh/git.zsh
source ${HOME}/dotfiles/zsh/prompt.zsh
source ${HOME}/dotfiles/zsh/keybindings.zsh



# Notes: https://thevaluable.dev/zsh-install-configure-mouseless/
#
export EDITOR="vim"
export VISUAL="vim"

# Prompt
# ---------------------
setopt promptsubst

# History
# ---------------------
export HISTFILE="$HOME/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE                                                                        
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt share_history          # share command history data

# ZSH Completion System
# ---------------------
 autoload -U compinit; compinit
# _comp_options+=(globdots)   # dont do this...
# setopt MENU_COMPLETE        # Automatically highlight first element of completion menu
 setopt AUTO_LIST            # Automatically list choices on ambiguous completion.
 setopt COMPLETE_IN_WORD     # Complete from both ends of a word.
 setopt AUTO_CD               # Change directory without 'cd'

# Zstyle completion patterns:
source ~/dotfiles/zsh/completion.zsh

# fzf setup:
# ----------
if [[ ! "$PATH" == */home/purtschert_j/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}${HOME}/.fzf/bin"
fi

# Auto-completion
[[ $- == *i* ]] && source "${HOME}/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
source "${HOME}/.fzf/shell/key-bindings.zsh"

# ESC Key delay:
export KEYTIMEOUT=1

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

alias ls='ls --color=auto'
alias l='ls -lah --color=auto'
alias ll='ls -lah --color=auto'

# Vimwiki:
alias wiki="vim -c ':VimwikiIndex'"

# Bookmark Plugin:
alias mark='bookmark'

source ${HOME}/.zshrc.local

