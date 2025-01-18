export NVIMDIR="${XDG_CONFIG_HOME:-$HOME/.config}/nvim"
export TMUXDIR="${XDG_CONFIG_HOME:-$HOME/.config}/tmux"
export TMUX_PLUGIN_MANAGER_PATH="${TMUXDIR}/plugins"
export TMUX_CONF="${TMUXDIR}/tmux.conf"
export TMUX_POWERLINE_THEME='my-theme'

if command -v nvim &>/dev/null; then
  export EDITOR="nvim"
  export VISUAL="nvim"
fi

export AWS_CONFIG_FILE="${XDG_CONFIG_HOME:-${HOME}/.config}/aws/config"
export RIPGREP_CONFIG_PATH="${XDG_CONFIG_HOME:-${HOME}/.config}/ripgrep/ripgreprc"
export NVM_DIR="$HOME/.config/nvm"
