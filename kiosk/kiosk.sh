#!/bin/sh
xset -dpms 	# disable DPMS (Energy Star) features
xset s off 	# disable screen saver
xset s noblank 	# don't blank the video device
unclutter &	# hide mouse cursor
matchbox-window-manager -use_titlebar no &
while true; do
	chromium-browser --kiosk --incognito --no-first-run \
		--disable-java --disable-plugins \
		--disk-cache-size=$((1024 * 1024)) --disk-cache-dir=/tmp/chromium/ \
		--user-data-dir=/tmp/chromium/ \
		--noerrdialogs "file://$HOME/IoT/kiosk/index.html" 
done
