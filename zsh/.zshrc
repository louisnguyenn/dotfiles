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

#
# Aliases
#

#
# Command line aliases
#

# Directory navigation
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

# Git aliases
alias gi='git init'
alias gs='git status'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit'
alias gcm='git commit -m'
alias gp='git push'
alias gpl='git pull'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'

# NPM Package aliases
alias ni="npm install"
alias nu="npm uninstall"
alias nup="npm update"
alias nrs="npm run start"
alias nrd="npm run dev"
alias nrb="npm run build"

# Other
alias reload='source ~/.zshrc'
