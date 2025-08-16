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

# Command line aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ~='cd ~'
alias c='clear'
alias h='history'
alias grep='grep --color=auto'

# Git aliases
alias gi='git init'
alias gs='git status'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit'
alias gp='git push'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'
