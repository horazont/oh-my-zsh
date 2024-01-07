function _reset-prompt-and-accept-line {
  old_prompt="$PROMPT"
  old_rprompt="$RPROMPT"
  PROMPT="%{$fg_bold[black]%}[%D{%H:%M:%S}] ${PROMPT}"
  RPROMPT=""
  zle reset-prompt
  PROMPT="$old_prompt"
  RPROMPT="$old_rprompt"
  zle .accept-line     # Note the . meaning the built-in accept-line.
}
zle -N accept-line _reset-prompt-and-accept-line
