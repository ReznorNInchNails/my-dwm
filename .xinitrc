#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# Set your wallpaper using feh
feh --bg-scale /home/dino/Japanese*.jpg

# Merge your .Xdefaults

xrdb -merge ~/.Xdefaults

# To use custom fonts
xset +fp /usr/share/fonts/local
xset fp rehash

# Only conky without dzen
#conky | while read -r; do xsetroot -name "$REPLY"; done &

# Conky with dzen, must use if you want xbm icons

(sleep 15s && conky | dzen2 -x '600' -e '' -fg '#121212' -bg '#dcdccc' -ta r -fn '-*-terminus-medium-r-*-*-12-*-*-*-*-*-*-*' -p) 

# Launch your configured dwm from dedicated dir

exec dbus-launch /usr/local/bin/dwm
