# Set vi-mode:
export KEYTIMEOUT=1
# export ZVM_LAZY_KEYBINDINGS=false

# Do the initialization when the script is sourced (i.e. Initialize instantly)
# ZVM_INIT_MODE=sourcing

# The plugin will auto execute this zvm_config function
function zvm_config() {
  # Retrieve default cursor styles
  local icur=$(zvm_cursor_style $ZVM_CURSOR_BLINKING_BEAM)
  local ncur=$(zvm_cursor_style $ZVM_CURSOR_BLOCK)

  # Append your custom color for your cursor
  ZVM_INSERT_MODE_CURSOR=$icur'\e\e]12;#aa80ff\a'
  ZVM_NORMAL_MODE_CURSOR=$ncur'\e\e]12;#008800\a'

  # ZVM_VI_HIGHLIGHT_FOREGROUND=#008800        # Hex value
  # ZVM_VI_HIGHLIGHT_BACKGROUND=#ff0000        # Hex value
  ZVM_VI_HIGHLIGHT_EXTRASTYLE=underline # bold and underline

  # Always starting with insert mode for each command line
  ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT

}

# The plugin will auto execute this zvm_after_init function
function zvm_after_init() {
  _fzf_source
}

# The plugin will auto execute this zvm_after_lazy_keybindings function
function zvm_after_lazy_keybindings() {
  # Here we define the custom widget
  # zvm_define_widget atuin-search

  # In normal mode, press Ctrl-r to invoke this widget
  zvm_bindkey vicmd '^r' atuin-search
  zvm_bindkey viins '^r' atuin-search
}
