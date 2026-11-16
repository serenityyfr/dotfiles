[[ -n $PS1 ]] || return

HISTCONTROL='ignoredups'
HISTSIZE=5000
HISTFILESIZE=5000

source "/home/serenityy/.config/shell/env"

shopt -s cdspell
shopt -s checkwinsize
shopt -s extglob

source "/home/serenityy/.config/shell/aliases"
source "/home/serenityy/.config/shell/functions"

eval "$(starship init bash)"
