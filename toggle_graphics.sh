#!/bin/bash
#This script uses supergfxctl to toggle between graphics modes of integrated and hybrid
#when the mute button (XF86AudioMute) is pressed on ASUS Zephyrus G14 laptop with nvidia 3060

cur_status=$(supergfxctl -g)

if [ "$cur_status" = "integrated" ]; then
  supergfxctl -m hybrid
  notify-send "switching to hybrid mode and logging out"
  bspc quit
elif [ "$cur_status" = "hybrid" ]; then
  supergfxctl -m integrated
  notify-send "switching to integrated mode and logging out"
  bspc quit
else 
  notify-send "This program only supports toggling between integrated and hybird modes in supergfxctl"
fi



