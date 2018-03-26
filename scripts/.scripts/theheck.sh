#!/usr/bin/env bash
###################################################################
# Script Name   : TheHeckIs
# Description   : Use this script to get all kind of information about things
# Args          :
# Author        : Claudio D. Arrieta
# Email         : ArrietaDavid2001@protonmail.com
###################################################################

# Define the options
options="A_file An_alias A_program"

select opt in $options; do 
  if [ "$opt" = "A_file" ]; then
    echo "This is a/an:"
    file "$1" | sed 's/[^,:]*://g'
    echo 
    echo "And these are his statistics:"
    echo
    stat "$1";
    exit
  elif [ "$opt" = "An_alias" ]; then
    echo "Where do you put your aliases? (Absolute paths only)"
    read -r aliasesfile
    if [ ! -s "$aliasesfile" ]; then
      echo "The file doesn't exists or it's empty"
      exit
    else ## Expand the aliases by default (https://bit.ly/2pyoSSk)
      shopt -s expand_aliases && . "$aliasesfile"
      echo 
      alias "$1"
      whatis "$1" 
      echo "Search all man pages for descriptions that match the alias"
      apropos "$1"
      exit
    fi
  elif [ "$opt" = "A_program" ]; then
    echo "The program is at:"
    command -v "$1"
    echo
    echo "A short description for the program:"
    whatis "$1"
    apropos "$1"
    exit
  else 
    echo "Bad option. Dude, see the options and gime one"
  fi
done
