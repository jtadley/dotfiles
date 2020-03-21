#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

exec bspwm &&

source $HOME/.profile &&
source $HOME/.custom-commands.sh &&

xmodmap $HOME/.Xmodmap &&
nitrogen --restore &&
xinput disable 'SynPS/2 Synaptics TouchPad' &&

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
