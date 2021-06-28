#!/bin/bash
su root -c "apt update && apt install i3 volumeicon-alsa feh xset imagemagick"
cp -r $(pwd)/resources/{i3,i3status} /home/$USER/.config/
