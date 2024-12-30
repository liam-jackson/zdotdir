#!/usr/bin/env zsh
#
# .zshenv - Zsh environment file, loaded always.
#

#############################################################
# NOTE: ${HOME}/.zshenv must exist and contain the following:
# 
# #!/usr/bin/env zsh
# 
# export ZDOTDIR="${HOME}/.config/zsh"
# 
# . "${ZDOTDIR}/.zshenv"
#############################################################

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Set ZDOTDIR if you want to re-home Zsh.
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
export ZDOTDIR=${ZDOTDIR:-$XDG_CONFIG_HOME/zsh}

# Ensure path arrays do not contain duplicates.
typeset -gU path fpath

# Set the list of directories that zsh searches for commands.
path=(
  $HOME/{,s}bin(N)
  $HOME/.local/{,s}bin(N)
  /opt/{homebrew,local}/{,s}bin(N)
  /usr/local/{,s}bin(N)
  /usr/local/go/bin(N)
  $path
)

if [[ -f "$HOME/.cargo/env" ]]; then
  . "$HOME/.cargo/env"
fi

if [[ -f "$HOME/.atuin/bin/env" ]]; then
  . "$HOME/.atuin/bin/env"
fi
