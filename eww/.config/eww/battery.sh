#!/bin/bash

bat=/sys/class/power_supply/BAT0
per="$(cat "$bat/capacity")"


icon() {
	line="$(acpi --ac-adapter | cut -d ":" -f 2 | xargs)"
	if [[ "$line" == "off-line" ]]; then
		echo "󱊣"
	else
		echo "󱐋"
	fi
}


percent() {
echo "$per"
}

[ "$1" = "icon" ] && icon && exit
[ "$1" = "percent" ] && percent && exit
exit
