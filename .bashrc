[[ -n $PS1 ]] || return

HISTCONTROL='ignoredups'
HISTSIZE=5000
HISTFILESIZE=5000

export LS_COLORS="\
di=01;34:\
ln=00;36:\
so=00;35:\
pi=00;33:\
ex=01;32:\
bd=01;33:\
cd=00;33:\
su=00;31:\
sg=00;31:\
tw=00;34:\
ow=04;34:\
st=00;34:\
fi=00:\
*.tar=00;31:*.tgz=00;31:*.zip=00;31:*.gz=00;31:*.xz=00;31:*.zst=00;31:\
*.jpg=00;35:*.jpeg=00;35:*.png=00;35:*.gif=00;35:*.svg=00;35:*.webp=00;35:\
*.mp4=00;35:*.mkv=00;35:*.mp3=00;35:*.flac=00;35:\
*.md=00;33:*.txt=00:*.json=00;36:*.yaml=00;36:*.toml=00;36"
export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'
export MANPAGER='less'

shopt -s cdspell
shopt -s checkwinsize
shopt -s extglob

alias g='git'
alias gst='git status'
alias ga='git add'
alias gl='git pull'
alias gp='git push'
alias gcm='git commit -m'
alias gsw='git switch'
alias gswc='git switch -c'

alias l='ls --color=auto'
alias ls='ls --color=auto'
alias la='ls -Ah --color=auto'
alias ll='ls -lah --color=auto'

alias c='clear'
alias n='nvim'
eval "$(starship init bash)"
