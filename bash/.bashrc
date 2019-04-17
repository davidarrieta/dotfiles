# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
#
# The basics

: ${HOME=~}
: ${LOGNAME=$(id -un)}
: ${UNAME=$(uname)}

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Same aliases for bash and zsh
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# Load .profile 
if [ -f ~/.profile ]; then
    . ~/.profile
fi

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
HISTCONTROL=$HISTCONTROL${HISTCONTROL+:}ignoredups
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoreboth

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# append to the history file, don't overwrite it
shopt -s histappend


# Prompt
# PS1='[\u@\h \W]\$ '
#PS1="[\w]\\$ \[$(tput sgr0)\]"
source ~/.bash_prompt

# Enable Bash-completion

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion


