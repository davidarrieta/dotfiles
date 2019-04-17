#!/usr/bin/env bash
###################################################################
# Script Name   :
# Description   :
# Args          :
# Author        : Claudio D. Arrieta
# Email         : ArrietaDavid2001@protonmail.com
###################################################################

term=st 
apps="Palemoon\nncmpcpp\nChromium\nTelegram\nSpaceFM\nEvince\nSonata\nGNOME-mpv"
#apps="Xmms\nChromium\nTelegram\nSpaceFM\nEvince\nClementine\nGNOME-mpv"
#apps="Xmms\nFirefox\nTelegram\nncmpcpp\nPCManFM\nZathura\nranger\nWeechat\nChromium"

chosen_app=$(echo -e $apps | dmenu -i)

case "$chosen_app" in 
  Telegram) telegram-desktop & ;;
  Chromium) chromium & ;; 
  Palemoon) palemoon & ;;
  SpaceFM) spacefm & ;;
  Evince) evince & ;;
  Clementine) clementine & ;;
  GNOME-mpv) gnome-mpv & ;;
  Xmms) xmms & ;;
  ncmpcpp) $term -n ncmpcpp -e ncmpcpp & ;;
  #Firefox) firefox & ;;
  #PCManFM) pcmanfm & ;;
  #Zathura) zathura & ;; 
  #ranger) $term -n ranger -e ranger & ;;
  #Weechat) $term -n weechat -e weechat & ;;
esac 
