#!/bin/sh
xset -dpms 	# disable DPMS (Energy Star) features
xset s off 	# disable screen saver
xset s noblank 	# don't blank the video device
unclutter &	# hide mouse cursor
matchbox-window-manager -use_titlebar no &
while true; do
	#midori -e Fullscreen -a $HOME/IoT/kiosk/index.html
	epiphany-browser -a --profile ~/.config ~/IoT/kiosk/index.html
done
