#
# ~/.bashrc
#
# the basics (a según)

: ${HOME=~}
: ${LOGNAME=$(id -un)}
: ${UNAME=$(uname)}

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=yes'
PS1='[\u@\h \W]\$ '

export EDITOR=vim
export PAGER=vimpager
