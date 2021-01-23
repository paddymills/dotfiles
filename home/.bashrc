# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
source "$HOME/.cargo/env"


if [[ $PATH != *:$HOME/bin:* ]]; then
    export PATH=$PATH:$HOME/bin
fi

source $HOME/.bash_aliases
