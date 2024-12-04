[[ ! -f "$HOME/.atuin/bin/env" ]] && return 1

. "$HOME/.atuin/bin/env"

export ATUIN_NOBIND="true"
eval "$(atuin init zsh)"

bindkey '^r' atuin-search-viins

# bind to the up key, which depends on terminal mode
# bindkey '^[[A' atuin-up-search
# bindkey '^[OA' atuin-up-search

