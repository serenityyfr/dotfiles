if [[ -z $SSH_AGENT_PID ]]; then
    eval "$(ssh-agent)" 2 &>/dev/null
fi

# History
HISTSIZE=100000
SAVEHIST=100000

# Aliases
alias c='clear'
alias n='nvim'
alias p3='python3'
alias ff='fastfetch'

alias ls='eza'
alias la='eza -ah --git'
alias ll='eza -lah --git'
alias l='eza -lh --git'

alias cat='bat'
alias grep='rg --color=auto'

alias ga='git add'
alias gs='git status'
alias gcm='git commit -m'
alias gp='git push'
alias gck='git checkout'

# Prompt
eval "$(starship init bash)"
. "$HOME/.cargo/env"
