export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

# Custom terminal settings
PS1='%F{cyan}%n@%m%f '$PS1
PURE_PROMPT_NEWLINE_BEFORE_MULTILINE=0
PURE_PROMPT_MULTILINE=0

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    )

source $ZSH/oh-my-zsh.sh

export EDITOR='code -w'
export TERM=xterm-256color

# Aliases

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
