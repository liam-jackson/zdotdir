#!/usr/bin/env zsh

# Set the list of directories that zsh searches for commands.
path=(
  $HOME/{,s}bin(N)
  $HOME/.local/{,s}bin(N)
  /opt/{local}/{,s}bin(N)
  /usr/local/{,s}bin(N)
  $path
)

# Lazy-load (autoload) Zsh function files from a directory.
fpath=(
  "${ZFUNCDIR}"
  $fpath
)

local brew_prefix
if [[ -d "/opt/homebrew" ]]; then
  brew_prefix="/opt/homebrew"
elif [[ -d "/home/linuxbrew/.linuxbrew" ]]; then
  brew_prefix="/home/linuxbrew/.linuxbrew"
fi

if [[ -f "${brew_prefix}/bin/brew" ]]; then 
  eval "$(${brew_prefix}/bin/brew shellenv)"
fi 

export PAGER="${brew_prefix}/bin/less"
export MANPAGER="${brew_prefix}/bin/less"
export MANPATH="${brew_prefix}/share/man:$MANPATH"

unset brew_prefix

if [[ -f "$HOME/.cargo/env" ]]; then
  . "$HOME/.cargo/env"
fi

if [[ -f "$HOME/.atuin/bin/env" ]]; then
  export ATUIN_NOBIND="true"
  . "$HOME/.atuin/bin/env"
fi
