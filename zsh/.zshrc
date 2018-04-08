######################################################################
#
#  ___           _    _ _      _______ _  _ 
# |   \ __ ___ _(_)__| ( )___ |_  / __| || |
# | |) / _` \ V / / _` |/(_-<  / /\__ \ __ |
# |___/\__,_|\_/|_\__,_| /__/ /___|___/_||_|
#
#
######################################################################

#######################################################
#
# Claudio D. Arrieta's custom zsh
# License: GPLv3
# See: https://github.com/DavidArrieta/dotfiles
# for more information
#
#######################################################

#######################################################
# Sections:
#
#	-> General
#	-> Plugins and themes
#		-> Zplug-specific
#	-> Shell utils
#
#######################################################


###-- General --###
#
# Needed by zplug
source ~/.zplug/init.zsh

###-- Plugins and themes --###

# Let zplug manage itself
zplug 'zplug/zplug', \
	hook-build:'zplug --self-manage'

# Install a bunch of useful OMZ plugins
#
#
zplug "plugins/git", \
	from:oh-my-zsh
#
#
zplug "plugins/z",	 \
	from:oh-my-zsh
#
#
zplug "plugins/colorize", \
	from:oh-my-zsh
#
#
zplug "plugins/copydir", \
	from:oh-my-zsh
#
#
zplug "plugins/extract", \
	from:oh-my-zsh
#
#
zplug "plugins/web-search", \
	from:oh-my-zsh
#
#


# Load a pretty minimalist theme from OMZ
zplug "themes/gallois",	\
	from:oh-my-zsh, as:theme

# Install a bunch of useful plugins from the web

#
#
zplug "zsh-users/zsh-syntax-highlighting", \
	defer:2
#
#
zplug "zsh-users/zsh-autosuggestions",	\
	as:plugin
#
#
zplug "zsh-users/zsh-completions"
#
#
zplug "paulirish/git-open",				\
	as:plugin
#
#
zplug "djui/alias-tips"
#
#

# Required by zsh-completions
autoload -U compinit && compinit

###-- Zplug-specific --###

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

###-- Shell utils --### 

#
# Source my own aliases (Available in my dotfiles repo)
source $HOME/.aliases
#
#
# Source my .profile (Available in my dotfiles repo)
source $HOME/.profile
#
#
# Specify which file use to store the history
export HISTFILE="$HOME/.zsh_history"
#
#
# Set the maximum size of .zsh_history. In my case, I want a big history file
export HISTSIZE=1000000
#
#
# Same as above. 
export SAVEHIST=1000000
#
#
# ls automatically after cd
function chpwd() {
    emulate -L zsh
    ls -a
 }
