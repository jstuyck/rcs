#!/bin/sh

#env
source ~/.zsh.d/.zshenv

#alias
source ~/.zsh.d/.zshalias

#General config
source ~/.zsh.d/.zshconf

source ~/.zsh.d/shfunction

source ~/.zsh.d/.zshprompt

if [ -f ~/.zsh.d/.zshrc.mine ]; then
    source ~/.zsh.d/.zshrc.mine
fi

