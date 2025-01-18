# if atuin is available, set it up:
if [[ -f "$HOME/.atuin/bin/env" ]]; then
  eval "$(atuin init zsh)"

  bindkey '^r' atuin-search-viins
fi
