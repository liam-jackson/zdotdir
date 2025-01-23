# To customize prompt, run `p10k configure` or edit .p10k.zsh.
if [[ -f ${ZDOTDIR:-$HOME}/.p10k.zsh ]]; then
  source ${ZDOTDIR:-$HOME}/.p10k.zsh
else
  source "${HOMEBREW_PREFIX}/share/powerlevel10k/powerlevel10k.zsh-theme"
  # if command -v brew &>/dev/null; then
  # fi
fi
