#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
polybar adley-bar &
polybar adley-bar-external &
polybar adley-bar-external-2 &

echo "Polybar launched."
