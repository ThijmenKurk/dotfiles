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

# VSCode
export PATH=$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin

# Python3.7 user packages
export PATH=$PATH:~/Library/Python/3.7/bin

# Virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export VIRTUALENVWRAPPER_SCRIPT=~/Library/Python/3.7/bin/virtualenvwrapper.sh
source ~/Library/Python/3.7/bin/virtualenvwrapper_lazy.sh

# Functions
function installdmg {
    listing=$(hdiutil attach $1 | grep Volumes)
    volume=$(echo "$listing" | cut -f 3)
    if [ -e "$volume"/*.app ]; then
      sudo cp -rf "$volume"/*.app /Applications
    elif [ -e "$volume"/*.pkg ]; then
      package=$(ls -1 "$volume" | grep .pkg | head -1)
      sudo installer -pkg "$volume"/"$package" -target /
    fi
    hdiutil detach $(echo "$listing" | cut -f 1)
}

# Hotkeys
gohome(){
    clear;
    cs ~; 
    zle reset-prompt;
}
zle -N gohome gohome
bindkey ^h "gohome"

# Aliases

alias vpn-start='VBoxManage startvm vpn-only --type headless'
alias vpn-stop='VBoxManage controlvm vpn-only poweroff soft'
alias ls='ls -lG'
alias grep='grep --color=always'
alias gs='git status'
alias gp='git push'
alias gpl='git pull'
alias gaa='git add -A'
alias gcm='git commit -m '
alias gd='git diff'

cs() { builtin cd "$1" && ls; }
alias cd='cs'
