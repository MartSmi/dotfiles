#!/bin/sh
systemctl --user import-environment DISPLAY
setxkbmap -option grp:alt_shift_toggle us,lt
xmodmap .Xmodmap
xrdb .Xresources
xcape -e "Hyper_L=Escape"
exec i3
