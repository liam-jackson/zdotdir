# history setup
HISTFILE="${ZDOTDIR:-$HOME}/.zsh_history"
SAVEHIST=10000
HISTSIZE=5000

setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify
setopt share_history
setopt inc_append_history

# if atuin is available, set it up:
if [[ -f "$HOME/.atuin/bin/env" ]]; then
  . "$HOME/.atuin/bin/env"

  export ATUIN_NOBIND="true"
  eval "$(atuin init zsh)"

  bindkey '^r' atuin-search-viins
fi
