PROMPT='%{$fg_bold[magenta]%}%n%{$fg_bold[blue]%}@%{$fg_bold[cyan]%}%m%{$fg_bold[blue]%} %1~ %{$fg_bold[yellow]%}›%{$reset_color%} '
RPROMPT='$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$bg[blue]$fg[white]%}git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
