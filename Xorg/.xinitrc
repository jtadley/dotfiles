#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)


source $HOME/.profile &
source $HOME/.custom-commands.sh &

xmodmap $HOME/.Xmodmap &
$SCRIPTS_HOME/setbg &
$SCRIPTS_HOME/external_monitor & $SCRIPTS_HOME/external_monitor &
amixer sset Master 50% &
amixer sset Master mute &
amixer set Speaker 0% mute &
xinput disable 'SynPS/2 Synaptics TouchPad' &

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources &

exec bspwm
