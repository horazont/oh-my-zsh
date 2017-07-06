function _reset-prompt-and-accept-line {
  old_prompt="$PROMPT"
  PROMPT="%{$fg_bold[black]%}[%D{%H:%M:%S}] ${PROMPT}"
  zle reset-prompt
  PROMPT="$old_prompt"
  zle .accept-line     # Note the . meaning the built-in accept-line.
}
zle -N accept-line _reset-prompt-and-accept-line
