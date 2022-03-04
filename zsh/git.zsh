function git_prompt() {
  local branchname=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
  [ -z "$branchname" ] && return 0
  echo "${ZSH_THEME_GIT_PROMPT_PREFIX}${branchname:gs/%/%%}${ZSH_THEME_GIT_PROMPT_SUFFIX}"
}

