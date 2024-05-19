#/bin/bash

COLOR_OFF="000000"
COLOR_ON="FFFFFF"
STATUS_FILE=$HOME/.config/hypr/scripts/.lightning_status

motherboard_lightning_on() {
    openrgb --device 'B450 AORUS PRO WIFI-CF' --mode direct --color $COLOR_ON
}
ram_lightning_on() {
    openrgb --device 'Corsair Vengeance Pro RGB' --mode static --color $COLOR_ON
}
motherboard_lightning_off() {
    openrgb --device 'B450 AORUS PRO WIFI-CF' --mode direct --color $COLOR_OFF
}
ram_lightning_off() {
    openrgb --device 'Corsair Vengeance Pro RGB' --mode static --color $COLOR_OFF
}

if [[ ! -e "$STATUS_FILE" ]]; then
    echo "export LIGHTNING=1" > $STATUS_FILE 
fi
    source $STATUS_FILE

# Toggle gaps and rounding
if [[ $LIGHTNING == 0 ]]; then
    echo "export LIGHTNING=1" > $STATUS_FILE
    notify-send --urgency=low "Turning on lightning"
    motherboard_lightning_on &
    ram_lightning_on &
else
    echo "export LIGHTNING=0" > $STATUS_FILE
    notify-send --urgency=low "Turning off lightning"
    motherboard_lightning_off &
    ram_lightning_off &
fi

wait
