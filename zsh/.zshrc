export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    )

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

export EDITOR='code -w'
export TERM=xterm-256color

# -----------
# Aliases
# -----------

# Directory
alias ..='cd ..'
alias ~='cd ~'
alias desktop="cd ~/Desktop"
alias downloads="cd ~/Downloads"

# File operations
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias c='clear'
alias h='history'

# Git
alias gi='git init'
alias gs='git status'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit'
alias gcm='git commit -m'
alias gcam='git commit -am'
alias gp='git push'
alias gpl='git pull'
alias gd='git diff'
alias gl='git log'
alias gb='git branch'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gm='git merge'
alias gr='git remote -v'

# NPM Package aliases / Development
alias ni="npm install"
alias nu="npm uninstall"
alias nup="npm update"
alias nrs="npm run start"
alias nrd="npm run dev"
alias nrb="npm run build"
alias code='code .'

# Docker
alias d='docker'
alias dc='docker-compose'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias di='docker images'
alias drm='docker rm'
alias drmi='docker rmi'
alias dstop='docker stop $(docker ps -a -q)'
alias dclean='docker system prune -f'

# Other
alias reload='source ~/.zshrc'
