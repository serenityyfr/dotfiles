# Tmux Startup
if [[ -z "$TMUX" ]]; then
    session="main"

    tmux has-sessiont -t "$session" 2>/dev/null || {
        tmux new-session -d -s "$session":0 -n TERM

        tmux new-window -t "$session":1 -n TERM2
        tmux new-window -t "$session":9 -n NVIM

        tmux send-keys -t "$session":0 'exec bash' C-m
        tmux send-keys -t "$session":1 'exec bash' C-m
        tmux send-keys -t "$session":9 'exec bash' C-m

        tmux send-keys -t "$session":0 'clear' C-m
        tmux send-keys -t "$session":1 'clear' C-m
        tmux send-keys -t "$session":9 'clear' C-m

        tmux select-window -t "$session":0
    }

    exec tmux attach -t "$session"

fi

# History
HISTSIZE=100000
SAVEHIST=100000

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS

# Shell Behaviour
setopt AUTOCD
setopt NOBEEP
setopt NUMERIC_GLOB_SORT

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

alias ga='git add'
alias gs='git status'
alias gcm='git commit -m'
alias gp='git push'
alias gck='git checkout'

# Prompt
eval "$(starship init bash)"
