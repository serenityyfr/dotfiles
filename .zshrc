fpath=(/usr/share/zsh/site-functions $fpath)


alias n='nvim'

alias l='ls --color=auto'
alias ls='ls --color=auto'
alias la='ls -A --color=auto'
alias ll='ls -lAh --color=auto'

alias gs='git status'
alias ga='git add'

autoload -Uz compinit
compinit

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#prompt
eval "$(starship init zsh)"
