# Make neovim the default editor for the whole system
export EDITOR=nvim

# Make less the default pager
export PAGER=less

# Use the less pager with these options, including line numbers
export LESS=' -RSJMNsi'

# Allow my scripts to be executed anywhere 
export PATH=$PATH:~/.scripts

# Needed by npm to properly work
export PATH=~/.npm-global/bin:$PATH

# less Colors for man Pages
export LESS_TERMCAP_mb=$'\e[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\e[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\e[0m'           # end mode
export LESS_TERMCAP_se=$'\e[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\e[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\e[0m'           # end underline
export LESS_TERMCAP_us=$'\e[04;38;5;146m' # begin underline

# From "man 1 gpg-agent":

# You should always add the following lines to your .bashrc or whatever
# initialization file is used for all shell invocations:

GPG_TTY=`tty`
export GPG_TTY
