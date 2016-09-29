#!/bin/sh
xset -dpms
xset s off
unclutter &
matchbox-window-manager &
while true; do
	midori -e Fullscreen -a $HOME/IoT/kiosk/index.html
done
