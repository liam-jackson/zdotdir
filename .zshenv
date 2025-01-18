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

# TODO: define environment variables
# https://zsh.sourceforge.io/Guide/zshguide02.html#l28:~:text=2.5.10%3A%20Environment%20variables
# Environment variables will be passed to any programmes run from a shell, so it may be
# enough to define them in .zlogin or .zprofile: however, any shell started for you
# non-interactively won't run those, and there are other possible problems if you use a
# windowing system which is started by a shell other than zsh or which doesn't run a
# shell start-up file at all --- I had to tweak mine to make it do so.
# So .zshenv is the safest place.

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export ZDOTDIR="${ZDOTDIR:-$XDG_CONFIG_HOME/zsh}"
export ZFUNCDIR="${ZDOTDIR:-$HOME}/.zfunctions"

if command -v nvim &>/dev/null; then
  export EDITOR="nvim"
  export VISUAL="nvim"
fi

export NVIMDIR="${XDG_CONFIG_HOME:-$HOME/.config}/nvim"

export TMUXDIR="${XDG_CONFIG_HOME:-$HOME/.config}/tmux"
export TMUX_PLUGIN_MANAGER_PATH="${TMUXDIR}/plugins"
export TMUX_CONF="${TMUXDIR}/tmux.conf"
export TMUX_POWERLINE_THEME='my-theme'

if command -v fd &>/dev/null; then
  export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
fi

export RIPGREP_CONFIG_PATH="${XDG_CONFIG_HOME:-${HOME}/.config}/ripgrep/ripgreprc"

export NVM_DIR="${XDG_CONFIG_HOME:-${HOME}/.config}/nvm"

export AWS_CONFIG_FILE="${XDG_CONFIG_HOME:-${HOME}/.config}/aws/config"
