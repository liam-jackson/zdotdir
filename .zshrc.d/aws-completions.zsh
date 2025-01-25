# Ensure bash-style completions only load if necessary
if [[ -z "$_BASHCOMPINIT_LOADED" ]]; then
  autoload -Uz bashcompinit && bashcompinit
  typeset -g _BASHCOMPINIT_LOADED=1
fi

# Register AWS CLI completions
complete -C "$(command -v aws_completer)" aws
