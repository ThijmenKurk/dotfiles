#!/bin/zsh

export LC_ALL=en_US.UTF-8

# Colors
autoload -U colors && colors

# Completion
autoload -U compinit
compinit

# Correction
setopt correctall

# Prompt
export PS1="[%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m%{$reset_color%} %{$fg[yellow]%}%~%{$reset_color%}] $ "

# Python3.7 user packages
export PATH=$PATH:~/Library/Python/3.7/bin

# Virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export VIRTUALENVWRAPPER_SCRIPT=~/Library/Python/3.7/bin/virtualenvwrapper.sh
source ~/Library/Python/3.7/bin/virtualenvwrapper_lazy.sh

# Aliases
alias ls='ls -lG'
alias gs='git status'
alias gp='git push'
alias gpl='git pull'
alias gaa='git add -A'
alias gcm='git commit -m '
alias gd='git diff'
