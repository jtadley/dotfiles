#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)


source $HOME/.profile &
source $HOME/.custom-commands.sh &

xmodmap $HOME/.Xmodmap &
$SCRIPTS_HOME/setbg &
amixer sset Speaker 100- &
xinput disable 'SynPS/2 Synaptics TouchPad' &

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources &

exec bspwm
