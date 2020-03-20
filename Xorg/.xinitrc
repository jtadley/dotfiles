#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

exec bspwm

source $HOME/.custom-commands.sh
xmodmap $HOME/.Xmodmap
