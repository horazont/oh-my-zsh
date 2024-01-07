# https://gist.github.com/taviso/c987a7245335cf1ad1e2b565e77668d4

typeset -A _status
_status=(
      0 😀                # Success
      1 🤨                # Error
    129 📞                # SIGHUP
    130 🛑                # SIGINT
    131 "(╯°□°）╯︵ ┻━┻"  # SIGQUIT
    132 👮                # SIGILL
    133 🐍                # SIGTRAP
    134 💥                # SIGABRT
    135 🚌                # SIGBUS
    136 🧮                # SIGFPE
    137 🔫                # SIGKILL
    138 🥇                # SIGUSR1
    139 💣                # SIGSEGV
    140 🥈                # SIGUSR2
    141 🚿                # SIGPIPE
    142 ⏰                # SIGALRM
    143 💀                # SIGTERM
    147 💤                # SIGSTOP
    148 😴                # SIGTSTP
)

PROMPT='${_status[$?]:-🤷}%{$fg_bold[magenta]%}%n%{$fg_bold[blue]%}@%{$fg_bold[cyan]%}%m%{$fg_bold[blue]%} %1~ %{$fg_bold[yellow]%}›%{$reset_color%} '
RPROMPT='$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$bg[blue]$fg[white]%}\ue0a0 "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

TMOUT=15

TRAPALRM() {
    zle reset-prompt
}
