#!/bin/zsh

# Colors
autoload -U colors && colors

# Completion
autoload -U compinit
compinit

# Correction
setopt correctall

# Prompt
export PS1="[%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m%{$reset_color%} %{$fg[yellow]%}%~%{$reset_color%}] $ "

# Aliases
alias ls='ls -lG'
alias gs='git status'
alias gp='git push'
alias gpl='git pull'
alias gaa='git add -A'
alias gcm='git commit -m '
