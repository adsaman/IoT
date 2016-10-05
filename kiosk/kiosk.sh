#!/bin/sh
xset -dpms 	# disable DPMS (Energy Star) features
xset s off 	# disable screen saver
xset s noblank 	# don't blank the video device
unclutter &	# hide mouse cursor
matchbox-window-manager -use_titlebar no &
while true; do
	chromium-browser --incognito --kiosk "file://$HOME/IoT/kiosk/index.html" 
done
