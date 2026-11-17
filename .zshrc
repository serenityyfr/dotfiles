[[ -n $PS1 ]] || return

HISTFILE='/home/serenityy/dotfiles/.config/shell/zsh_history'
HISTSIZE=5000
HISTFILESIZE=5000
HISTCONTROL='ignoredups'

source "/home/serenityy/.config/shell/env"
source "/home/serenityy/.config/shell/aliases"
source "/home/serenityy/.config/shell/functions"

autoload -Uz compinit
compinit

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(starship init zsh)"
