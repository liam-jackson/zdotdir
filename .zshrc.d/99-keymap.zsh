# Manual last-minute keybinds to ensure they're set

bindkey -M viins '^I' fzf-tab-complete

function append-last-word {
  ((++CURSOR))
  zle insert-last-word
}
zle -N append-last-word
bindkey -M vicmd '\e.' append-last-word
bindkey -M viins '\e.' append-last-word
