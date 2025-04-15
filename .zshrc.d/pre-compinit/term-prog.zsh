[[ -z "${TERM_PROGRAM==*ghostty*}" ]] && return
[[ -n "$GHOSTTY_RESOURCES_DIR" ]] && source "${GHOSTTY_RESOURCES_DIR}/shell-integration/zsh/ghostty-integration"
