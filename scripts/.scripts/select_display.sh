#!/bin/sh
###################################################################
# Script Name   : select_display.sh
# Description   : Select the display you want to use with dmenu
# Args          :
# Author        : Claudio D. Arrieta
# Email         : ArrietaDavid2001@protonmail.com
###################################################################


choices="laptop\nlaptopdual\nVGA\nHDMI\nManual selection"

chosen=$(echo -e "$choices" | dmenu -i)

case "$chosen" in
	laptop) sh $HOME/.screenlayout/laptop-screen.sh ;; 
	VGA) sh $HOME/.screenlayout/vga.sh ;; 
	"Manual selection") arandr ;;
esac

# Relaunch polybar if there was a selection.
[ "$chosen" == "" ] || polybar_launch
