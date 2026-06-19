# Aliases
alias n='nvim'
alias p3='python3'
alias ff='fastfetch'

alias ls='eza'
alias la='eza -ah --git'
alias ll='eza -lah --git'
alias l='eza -lh --git'

alias cat='bat'
alias fd='fdfind'
alias grep='rg --color=auto'
alias diff='diff --color=auto'
alias cd='z'

alias ga='git add'
alias gs='git status'
alias gcm='git commit -m'
alias gp='git push'
alias gck='git checkout'

# Prompt
eval "$(starship init bash)"
