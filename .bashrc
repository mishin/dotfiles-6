# Aliases
alias v='vim'
alias x='exit'
alias c='clear'
alias ..='cd ..'
alias ll='ls -l'
alias la='ls -la'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias h='history'
alias .='echo $PWD'
alias e='emacs -nw'

# Prompt
export PS1="\[\e[1m\][ \u ] [ \h ] [ \w ]\n\\$\[\e[0m\] \[$(tput sgr0)\]"
