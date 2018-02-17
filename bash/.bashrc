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

# Load .profile 
if [ -f ~/.profile ]; then
    . ~/.profile
fi

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# Prompt
# PS1='[\u@\h \W]\$ '
PS1="[\w]\\$ \[$(tput sgr0)\]"

# Enable Bash-completion

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion
