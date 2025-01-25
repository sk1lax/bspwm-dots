#!/bin/bash
#    __         _       __    __                                         _       __
#   / /_  _____(_)___ _/ /_  / /_____  ___  __________   _______________(_)___  / /_
#  / __ \/ ___/ / __ `/ __ \/ __/ __ \/ _ \/ ___/ ___/  / ___/ ___/ ___/ / __ \/ __/
# / /_/ / /  / / /_/ / / / / /_/ / / /  __(__  |__  )  (__  ) /__/ /  / / /_/ / /_
#/_.___/_/  /_/\__, /_/ /_/\__/_/ /_/\___/____/____/  /____/\___/_/  /_/ .___/\__/
#             /____/                                                  /_/
#							https://github.com/sk1lax/bspwm-dots
# 								Script to manage brightness

# Get brightness
get_brightness() {
	brightness=$(echo $(brightnessctl info | grep "%" | cut -d ' ' -f 4))
	echo "$brightness"
}

# Increase brightness
up_brightness() {
	brightnessctl s 5+% && dunstify -u low --replace=69 -i /usr/share/icons/Papirus/22x22/panel/brightness-high-symbolic.svg "Brightness : $(get_brightness)"
}

# Decrease brightness
down_brightness() {
	brightnessctl s 5-% && dunstify -u low --replace=69 -i /usr/share/icons/Papirus/22x22/panel/brightness-symbolic.svg "Brightness : $(get_brightness)"
}


# Execute accordingly
if [[ "$1" == "--get" ]]; then
	get_brightness
elif [[ "$1" == "--up" ]]; then
	up_brightness
elif [[ "$1" == "--down" ]]; then
    down_brightness
else
	get_brightness
fi
