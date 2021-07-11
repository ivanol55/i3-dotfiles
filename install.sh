#!/bin/bash
su root -c "apt update && apt install i3 volumeicon-alsa network-manager feh x11-xserver-utils imagemagick compton"
cp -r $(pwd)/resources/{i3,i3status,i3lock} /home/$USER/.config/
cp $(pwd)/resources/compton.conf /home/$USER/.config/compton.conf
chmod +x /home/$USER/.config/i3lock/i3lock-blur.sh
RES=$(xdpyinfo | awk '/dimensions:/ { print $2 }')
if [ $RES = "3840x2160" ] 
then
	cp resources/.Xresources /home/$USER/.Xresources	
fi
