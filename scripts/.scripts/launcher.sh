#!/usr/bin/env bash
###################################################################
# Script Name   :
# Description   :
# Args          :
# Author        : Claudio D. Arrieta
# Email         : ArrietaDavid2001@protonmail.com
###################################################################

term=st 
apps="Firefox\nTelegram\nncmpcpp\nPCManFM\nZathura\nranger\nWeechat\nChromium"

chosen_app=$(echo -e "$apps" | dmenu -i)

case "$chosen_app" in 
  Firefox) firefox & ;;
  Telegram) telegram-desktop & ;;
  ncmpcpp) $term -n ncmpcpp -e ncmpcpp & ;;
  PCManFM) pcmanfm & ;;
  Zathura) zathura & ;; 
  ranger) $term -n ranger -e ranger & ;;
  Weechat) $term -n weechat -e weechat & ;;
  Chromium) chromium & ;; 
esac 
