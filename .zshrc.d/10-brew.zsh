# To make Homebrew’s completions available in zsh, the Homebrew-managed zsh/site-functions path needs to be inserted into FPATH before initialising zsh’s completion facility. This is done by brew shellenv, so if you followed the post-Homebrew installation steps, eval "$(brew shellenv)" should be in your ~/.zprofile (on macOS) or ~/.zshrc (on Linux). All you need is add the following to your ~/.zshrc if it’s not already there, and, if you’re on Linux, make sure it’s placed after eval "$(brew shellenv)":
#
# autoload -Uz compinit
# compinit
# Note that if you are using Oh My Zsh, it will call compinit for you when you source oh-my-zsh.sh. In this case, make sure eval "$(brew shellenv)" is called before sourcing oh-my-zsh.sh if you’re on Linux, and you should be all set without any additional configuration.
#
# You may also need to forcibly rebuild zcompdump:
#
# rm -f ~/.zcompdump; compinit
# Additionally, if you receive “zsh compinit: insecure directories” warnings when attempting to load these completions, you may need to run this:
#
# chmod -R go-w "$(brew --prefix)/share"

# (( $+commands[brew] )) || return 1
# eval $(brew shellenv)
