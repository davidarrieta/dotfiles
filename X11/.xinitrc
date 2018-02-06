#!/bin/bash
# ~/.xinitrc is executed by startx

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Xresources
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# urxvt daemon
urxvtd -q -o -f


