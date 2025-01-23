[ -f "${HOMEBREW_PREFIX}/opt/fzf/shell/key-bindings.zsh" ] && source "${HOMEBREW_PREFIX}/opt/fzf/shell/key-bindings.zsh"
[ -f "${HOMEBREW_PREFIX}/opt/fzf/shell/completion.zsh" ] && source "${HOMEBREW_PREFIX}/opt/fzf/shell/completion.zsh"
# eval fzf:
function _fzf_source() {
  # Set up fzf key bindings and fuzzy completion
  if command -v fzf &>/dev/null; then
    source <(fzf --zsh)
  fi
}
# _fzf_source
