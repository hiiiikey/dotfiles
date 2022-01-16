#!/usr/bin/env bash

wid=$1
class=$2
instance=$3

if [[ "instance" == polybar ]]; then
	echo manage=off
	xdo above -t "$(xdo id -N Bspwm -n root | sort | head -n 1)" $wid
fi
