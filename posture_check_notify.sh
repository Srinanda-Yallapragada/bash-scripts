#!/bin/bash

#This script uses dunst to notify me to check my posture every 
# 30 min

# Made it a cronjob to run this one line. 
# Probably didnt need this to be a file but cronjobs were learned!

notify-send "Posture check!" -i ~/Pictures/Dunst-notif-images/posture-check.png -w
