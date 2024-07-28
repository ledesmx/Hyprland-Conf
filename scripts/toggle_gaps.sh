#!/usr/bin/bash

GAPS_IN=$1
GAPS_OUT=$2
ROUNDING=$3
STATUS_FILE=$HOME/.config/hypr/scripts/.gaps_status

add_gaps() {
	hyprctl keyword general:gaps_in $GAPS_IN
	hyprctl keyword general:gaps_out $GAPS_OUT
	hyprctl keyword decoration:rounding $ROUNDING
}

quit_gaps() {
	hyprctl keyword general:gaps_in 0
	hyprctl keyword general:gaps_out 0
	hyprctl keyword decoration:rounding 0
}

if [[ ! -e "$STATUS_FILE" ]]; then
	echo "export GAPS=1" >$STATUS_FILE
fi
source $STATUS_FILE

# Toggle gaps and rounding
if [[ $GAPS == 0 ]]; then
	echo "export GAPS=1" >$STATUS_FILE
	add_gaps
else
	echo "export GAPS=0" >$STATUS_FILE
	quit_gaps
fi

# Toggle waybar
#killall -SIGUSR1 waybar
