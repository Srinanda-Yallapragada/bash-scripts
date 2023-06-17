#!/bin/bash
#This script uses supergfxctl to toggle between graphics modes of integrated and hybrid
#when the ROG button (XF86Launch1) is pressed on ASUS Zephyrus G14 laptop with nvidia 3060
#Assumes hyprland. line "hyprctl exit" needs to be changed depending on which env this is used

cur_status=$(supergfxctl -g)

if [ "$cur_status" = "Integrated" ]; then
  supergfxctl -m Hybrid
  asusctl profile -P Performance
  notify-send "switching to hybrid mode, performance profile and logging out"
  sleep 1
  hyprctl dispatch exit
elif [ "$cur_status" = "Hybrid" ]; then
  supergfxctl -m Integrated
  asusctl profile -P Quiet
  notify-send "switching to integrated mode, quiet profile and logging out"
  sleep 1
  hyprctl dispatch exit
else 
  notify-send "This program only supports toggling between integrated and hybird modes in supergfxctl"
fi



