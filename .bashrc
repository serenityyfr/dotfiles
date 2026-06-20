if [[ -z "$TMUX" ]]; then
    session="main"

    tmux has-sessiont -t "$session" 2 &>/dev/null || {
        tmux new-session -d -s "$session":0 -n TERM
        tmux new-window -t "$session":9 -n NVIM

        tmux select-window -t "$session":0
    }

    exec tmux attach -t "$session"
fi

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
alias fd='fdfind'
alias grep='rg --color=auto'
alias diff='diff --color=auto'

alias ga='git add'
alias gs='git status'
alias gcm='git commit -m'
alias gp='git push'
alias gck='git checkout'

# Prompt
eval "$(starship init bash)"
