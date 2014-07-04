#!/bin/sh
## zshenv for ctafconf in /ctaf/conf/ctafconf/zsh
##
## Made by GESTES Cedric
## Login   <gestes_c@epita.fr>
##
## Started on  Fri Feb 11 01:37:23 2005 GESTES Cedric
## Last update Thu Dec  1 22:35:17 2005 sea
##
##CTAFCONF


#include global environment
source  ~/.zsh.d/globalenv

export HISTSIZE=1000
export HISTFILE=~/.zshhistory
export SAVEHIST=1000
export BLOCK_SIZE=human-readable
# depth of the directory history
DIRSTACKSIZE=30

#show who login and who logout on the system
export WATCHFMT="%n has %a %l from %M"
export WATCH=all

# Automatically remove duplicates from these arrays
#typeset -U PATH

if [ -f ~/.zshenv.mine ]; then
    source ~/.zshenv.mine
fi
