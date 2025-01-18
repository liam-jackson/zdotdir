# eval fzf:
function _fzf_source() {
  # Set up fzf key bindings and fuzzy completion
  if command -v fzf &>/dev/null; then
    source <(fzf --zsh)
    # if command -v fd &>/dev/null; then
    #   export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
    # fi
  fi
}
_fzf_source
