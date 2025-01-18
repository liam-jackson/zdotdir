# history setup per
# https://zsh.sourceforge.io/Guide/zshguide02.html#l28
HISTFILE="${ZDOTDIR:-$HOME}/.zsh_history"
SAVEHIST=10000
# savehist should be no more than histsize
HISTSIZE=50000

setopt append_history
setopt inc_append_history
setopt share_history

setopt hist_verify
setopt hist_ignore_dups
setopt hist_expire_dups_first
setopt hist_save_no_dups
setopt hist_find_no_dups

setopt hist_reduce_blanks
setopt hist_ignore_space
setopt hist_no_store

setopt no_hist_beep

# if atuin is available, set it up:
if [[ -f "$HOME/.atuin/bin/env" ]]; then
  . "$HOME/.atuin/bin/env"

  export ATUIN_NOBIND="true"
  eval "$(atuin init zsh)"

  bindkey '^r' atuin-search-viins
fi
