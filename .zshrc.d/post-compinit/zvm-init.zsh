# Set vi-mode:
export ZVM_KEYTIMEOUT=0.1

# The plugin will auto execute this zvm_config function
function zvm_config() {
  # Retrieve default cursor styles
  local icur=$(zvm_cursor_style $ZVM_CURSOR_BLINKING_BEAM)
  local ncur=$(zvm_cursor_style $ZVM_CURSOR_BLOCK)
  local ocur=$(zvm_cursor_style $ZVM_CURSOR_UNDERLINE)

  # Append your custom color for your cursor
  ZVM_INSERT_MODE_CURSOR=$icur'\e\e]12;#2222ff\a'
  ZVM_NORMAL_MODE_CURSOR=$ncur'\e\e]12;#00ff00\a'
  ZVM_OPPEND_MODE_CURSOR=$ocur'\e\e]12;#ff0000\a'

  # ZVM_VI_HIGHLIGHT_FOREGROUND=#008800        # Hex value
  # ZVM_VI_HIGHLIGHT_BACKGROUND=#ff0000        # Hex value
  # ZVM_VI_HIGHLIGHT_EXTRASTYLE='underline' # bold and underline

  # Always starting with insert mode for each command line
  ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT
}

# zvm_before_init_commands=()
# zvm_after_init_commands=()

# The plugin will auto execute this zvm_after_init function
function zvm_after_init() {
  _fzf_source
}

# zvm_before_select_vi_mode_commands=()
# zvm_after_select_vi_mode_commands=()

# zvm_before_lazy_keybindings_commands=()

# The plugin will auto execute this zvm_after_lazy_keybindings function
function zvm_after_lazy_keybindings() {
  [[ -f "${ZDOTDIR}/.keybinds" ]] && source "${ZDOTDIR}/.keybinds"

  # In normal mode, press Ctrl-r to invoke this widget
  zvm_bindkey vicmd '^r' atuin-search
  zvm_bindkey viins '^r' atuin-search
  zvm_bindkey viins '^I' fzf-tab-complete
  # zvm_bindkey viins '^XA' fzf-help-widget
  # zvm_bindkey viins '^ ' fzf-man-widget
  zvm_bindkey viins '^[' zvm_exit_insert_mode
  zvm_bindkey viins '\e.' append-last-word
}

source "${ZPLUGINS}/zsh-vi-mode/zsh-vi-mode.zsh"
