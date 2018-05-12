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
# ######################################################

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

#Let zplug manage itself
#zplug 'zplug/zplug', \
	#hook-build:'zplug --self-manage'

# Install a bunch of useful plugins

#
#
zplug "modules/git", \
	defer:1, \
	from:prezto
#
#
zplug "plugins/git", from:oh-my-zsh ## The gallois theme from OMZ needs this
#
#
zplug "modules/archive", \
	from:prezto
#
#
zplug "zsh-users/zsh-syntax-highlighting", \
	defer:2
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root line)
#
#
zplug "zsh-users/zsh-autosuggestions"
#
#
zplug "zsh-users/zsh-history-substring-search"
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
#
#
zplug "paulirish/git-open", \
	as:plugin
#
#
zplug "djui/alias-tips"
#
#
zplug "rupa/z", \
	use:z.sh		# Source a file that isn't a .zsh file
#
#
# Load a pretty minimalist theme from OMZ
zplug "themes/gallois", \
	from:oh-my-zsh, \
	as:theme

###-- Zplug-specific --###

# Source plugins and add commands to $PATH
zplug load

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
# ls automatically after cd
function chpwd() {
    emulate -L zsh
    ls -a
 }

# Source my own history configuration file (Heavily inspired by Prezto history module)
. $HOME/dotfiles/zsh/history.zsh

#BASE16_SHELL=$HOME/.config/base16-shell/
#[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
