# eval fzf:
function _fzf_source() {
  # Set up fzf key bindings and fuzzy completion
  if command -v fzf &>/dev/null; then
    source <(fzf --zsh)
  fi
}
_fzf_source
