#!/bin/bash
icon="$HOME/.config/i3lock/lock.png"
img=$(mktemp /tmp/XXXXXXXXXX.png)
import -window root $img 
convert $img -blur 9,9 $img
convert $img $icon -gravity center -composite $img
i3lock -u -i $img
rm $img
