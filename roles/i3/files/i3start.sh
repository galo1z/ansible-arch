#!/bin/sh
export $(dbus-launch) # Fix for some dbus issues
~/.config/startup.sh &
feh --no-fehbg --bg-fill ~/.config/wall.jpg
i3
