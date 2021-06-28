#!/bin/bash
su root -c "apt update && apt install i3 volumeicon-alsa feh xset imagemagick compton"
cp -r $(pwd)/resources/{i3,i3status,compton.conf} /home/$USER/.config/
