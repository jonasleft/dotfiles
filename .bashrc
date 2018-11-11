# include this bashrc in main file with:
# 'source dotfiles/.bashrc'

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


# overwrite prompt if terminal wants color:
#case "$TERM" in
#    xterm-color|*-256color) color_prompt=yes;;
#esac
color_prompt=yes

if [ "$color_prompt" = yes ]; then
  PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[33m\]\$(parse_git_branch)\[\033[00m\]$ "
fi
