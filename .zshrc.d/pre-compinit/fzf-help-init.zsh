# (($+commands[fzf-help-widget])) || return

local _fzf_help_widget_path
_fzf_help_widget_path="${HOME}/.local/share/fzf-help/fzf-help.zsh"

[[ ! -f $_fzf_help_widget_path ]] && { $(${ZPLUGINS}/fzf-help)/install --user }

source $_fzf_help_widget_path
zle -N fzf-help-widget
