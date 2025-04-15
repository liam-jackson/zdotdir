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

export COLOR_THEME='modus_vivendi_deuteranopia'
export DARK_THEME='modus_vivendi_deuteranopia'
export LIGHT_THEME='modus_operandi_tinted'

# Customizing user software options
export AWS_CONFIG_FILE="${XDG_CONFIG_HOME:-${HOME}/.config}/aws/config"

if command -v bat &>/dev/null; then
  export BAT_CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/bat"
  export BAT_CONFIG_PATH="${BAT_CONFIG_DIR}/config"
  export BAT_THEME_LIGHT="${LIGHT_THEME}"
  export BAT_THEME_DARK="${DARK_THEME}"
fi

export EZA_CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/eza"

if command -v fd &>/dev/null; then
  export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
fi

FZF_TAB_GROUP_COLORS=(
  $'\033[94m' $'\033[32m' $'\033[33m' $'\033[35m' $'\033[31m' $'\033[38;5;27m' $'\033[36m'
  $'\033[38;5;100m' $'\033[38;5;98m' $'\033[91m' $'\033[38;5;80m' $'\033[92m'
  $'\033[38;5;214m' $'\033[38;5;165m' $'\033[38;5;124m' $'\033[38;5;120m'
)

export LESS="-iRF --use-color --incsearch --search-options=W"
if [[ -f "${XDG_CONFIG_HOME}/less/lessfilter" ]]; then
  [[ ! -e "${HOME}/.lessfilter" ]] && ln -s "${XDG_CONFIG_HOME}/less/lessfilter" "${HOME}/.lessfilter"
  export LESSOPEN="|${HOME}/.lessfilter %s"
fi

export NVM_DIR="${XDG_CONFIG_HOME:-${HOME}/.config}/nvm"

export NVIMDIR="${XDG_CONFIG_HOME:-$HOME/.config}/nvim"

export RIPGREP_CONFIG_PATH="${XDG_CONFIG_HOME:-${HOME}/.config}/ripgrep/ripgreprc"

export TMUXDIR="${XDG_CONFIG_HOME:-$HOME/.config}/tmux"
export TMUX_PLUGIN_MANAGER_PATH="${TMUXDIR}/plugins"
export TMUX_CONF="${TMUXDIR}/tmux.conf"
export TMUX_POWERLINE_THEME='my-theme'
