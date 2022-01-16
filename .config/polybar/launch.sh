#!/usr/bin/env bash

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Launch

## Left bar
# polybar log -c ~/.config/polybar/current.ini &
polybar date -c ~/.config/polybar/current.ini &

## Right bar
polybar top -c ~/.config/polybar/current.ini &
polybar primary -c ~/.config/polybar/current.ini &

## Center bar
polybar primary -c ~/.config/polybar/workspace.ini &

## If second monitor is connected, launch polybar there

#if [[ $(xrandr -q | grep 'HDMI1 connected') ]]; then
#	polybar external -c $(dirname $0)/config.ini &
#fi


  
