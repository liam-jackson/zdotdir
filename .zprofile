#!/usr/bin/env zsh

# Set the list of directories that zsh searches for commands.
path=(
  $HOME/{,s}bin(N)
  $HOME/.local/{,s}bin(N)
  /opt/{local}/{,s}bin(N)
  /usr/local/{,s}bin(N)
  $path
)

if [[ -f "/opt/homebrew/bin/brew" ]]; then 
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi 

if [[ -f "$HOME/.cargo/env" ]]; then
  . "$HOME/.cargo/env"
fi

if [[ -f "$HOME/.atuin/bin/env" ]]; then
  export ATUIN_NOBIND="true"
  . "$HOME/.atuin/bin/env"
fi
