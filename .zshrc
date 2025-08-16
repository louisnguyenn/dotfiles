export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

# Minimal Spaceship config
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  host          # Hostname section
  dir           # Current directory section
  git           # Git section
  char          # Prompt character
)

SPACESHIP_USER_SHOW=always
SPACESHIP_HOST_SHOW=always
SPACESHIP_USER_PREFIX=""
SPACESHIP_USER_SUFFIX="@"
SPACESHIP_HOST_PREFIX=""
SPACESHIP_HOST_SUFFIX=" "
SPACESHIP_DIR_PREFIX=""
SPACESHIP_GIT_PREFIX=""
SPACESHIP_CHAR_SYMBOL="➜ "

# fpath+=($HOME/.zsh/pure)
# autoload -U promptinit; promptinit
# prompt pure

# Custom terminal settings for Pure
# PS1='%F{cyan}%n@%m%f '$PS1
# PURE_PROMPT_NEWLINE_BEFORE_MULTILINE=0
# PURE_PROMPT_MULTILINE=0

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    )

source $ZSH/oh-my-zsh.sh

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
