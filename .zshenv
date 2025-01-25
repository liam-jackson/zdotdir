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

# Ensure path arrays do not contain duplicates.
typeset -gU path fpath

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

FZF_TAB_GROUP_COLORS=(
  $'\033[94m' $'\033[32m' $'\033[33m' $'\033[35m' $'\033[31m' $'\033[38;5;27m' $'\033[36m'
  $'\033[38;5;100m' $'\033[38;5;98m' $'\033[91m' $'\033[38;5;80m' $'\033[92m'
  $'\033[38;5;214m' $'\033[38;5;165m' $'\033[38;5;124m' $'\033[38;5;120m'
)

export LESSOPEN="|/opt/homebrew/bin/lesspipe.sh %s"

export RIPGREP_CONFIG_PATH="${XDG_CONFIG_HOME:-${HOME}/.config}/ripgrep/ripgreprc"

export NVM_DIR="${XDG_CONFIG_HOME:-${HOME}/.config}/nvm"

export AWS_CONFIG_FILE="${XDG_CONFIG_HOME:-${HOME}/.config}/aws/config"
