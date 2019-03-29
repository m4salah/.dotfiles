#!/bin/sh
# make screen 1080 reslution
xrandr --output eDP-1 --mode 1920x1080 --rate 120
#set wallpaper
setbg
#tap to click on touchpad
xinput set-prop 11 289 1
#set keyboard layoout arabic and english
setxkbmap -layout us,ar
setxkbmap -option 'grp:alt_shift_toggle'
# key binding configuration
xbindkeys
./slstatus/slstatus
