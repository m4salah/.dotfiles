#!/bin/sh

### Background
xsetroot -solid black

### WELCOME script
st "$HOME/.config/dwm-custom/rescue/misc/WELCOME.sh"

### kill dwm once WELCOME script is finished
kill "$(ps -C dwm -o pid=)"
