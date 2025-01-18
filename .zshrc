#!/usr/bin/env zsh
#
# .zshrc - Zsh file loaded on interactive shell sessions.
#

[[ -f "${zdotdir:-$HOME}/.shopts" ]] && source "${zdotdir:-$HOME}/.shopts"

[[ -f "${ZDOTDIR:-$HOME}/.aliases" ]] && source "${ZDOTDIR:-$HOME}/.aliases"

# Enable Powerlevel10k instant prompt. Should stay close to the top of .zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lazy-load (autoload) Zsh function files from a directory.
fpath=(
  "${ZFUNCDIR}"
  "${HOMEBREW_PREFIX}/share/zsh-completions" 
  $fpath
)
autoload -Uz $ZFUNCDIR/*(.:t)

# Source Antidote from Homebrew if available, otherwise clone from github.
brew_antidote="${HOMEBREW_PREFIX}/opt/antidote/share/antidote/antidote.zsh"
gith_antidote="${ZDOTDIR:-$HOME}/.antidote/antidote.zsh"
if [[ -f "$brew_antidote" ]]; then
  source "$brew_antidote"
else
  [[ -d "${gith_antidote%/*}" ]] || git clone https://github.com/mattmc3/antidote "${gith_antidote%/*}"
  source "$gith_antidote"
fi
unset brew_antidote gith_antidote
antidote load

# Source anything in .zshrc.d.
for _rc in ${ZDOTDIR:-$HOME}/.zshrc.d/*.zsh; do
  # Ignore tilde files.
  if [[ $_rc:t != '~'* ]]; then
    source "$_rc"
  fi
done
unset _rc

# Set any zstyles you might use for configuration.
[[ -f "${ZDOTDIR:-$HOME}/.zstyles" ]] && source "${ZDOTDIR:-$HOME}/.zstyles"

[[ -f "${ZDOTDIR}/.keybinds" ]] && source "${ZDOTDIR}/.keybinds"
