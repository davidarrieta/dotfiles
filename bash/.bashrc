#
# ~/.bashrc
#
# The basics

: ${HOME=~}
: ${LOGNAME=$(id -un)}
: ${UNAME=$(uname)}

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Same aliases for bash and zsh
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

alias ls='ls --color=yes'
PS1='[\u@\h \W]\$ '

export EDITOR=vim
export PAGER=vimpager

