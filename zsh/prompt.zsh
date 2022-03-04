autoload -Uz colors; colors

HOST_PROMPT="%{$fg_bold[yellow]%}$HOST"

#local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
#RPS1='$(vi_mode_prompt_info) ${return_code}'

# ➜
#   ❯
#
PROMPT="%(?:%{$fg_bold[green]%}❯:%{$fg_bold[green]%}❯)"
# put it in single quotes, otherwise variables are not updated:
PROMPT+=' $HOST_PROMPT:%{$fg[cyan]%}%c%{$reset_color%} $(git_prompt)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}[%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[blue]%}] %{$fg[yellow]%}%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}] %{$fg[yellow]%}✗"
#ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}]"
