#!/bin/bash

LAYOUT=$(localectl list-x11-keymap-layouts | instantmenu -l 30 -p "select keyboard layout")
if [ -n "$LAYOUT" ]; then
    echo "applying keyboard layout $LAYOUT"
    setxkbmap -layout de
    mkdir -p ~/instantos/
    echo "$LAYOUT" >~/instantos/keyboard
else
    echo "not layout selected"
    exit
fi
