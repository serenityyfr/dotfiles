alias l='ls --color=auto'
alias ls='ls --color=auto'
alias la='ls -Ah --color=auto'
alias ll='ls -lah --color=auto'

alias c='clear'
alias n='nvim'

# Zenbones LS_COLORS (ANSI-mapped for automatic Dark/Light support)
# Format: [00=normal, 01=bold, 04=underline];[30-37=fg];[40-47=bg]
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

eval "$(starship init bash)"
