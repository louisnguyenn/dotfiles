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
