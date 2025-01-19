#!/bin/bash
#
#    __                        __                    _       __
#   / /___ ___  ______  __  __/ /_   _______________(_)___  / /_
#  / / __ `/ / / / __ \/ / / / __/  / ___/ ___/ ___/ / __ \/ __/
# / / /_/ / /_/ / /_/ / /_/ / /_   (__  ) /__/ /  / / /_/ / /_
#/_/\__,_/\__, /\____/\__,_/\__/  /____/\___/_/  /_/ .___/\__/
#        /____/                                   /_/
#						https://github.com/sk1lax/bspwm-dots
# 								Script to manage layout
# Get the current layout
current=$(setxkbmap -query | awk '/layout/ {print $2}' | cut -c 1,2)

# Layouts. You can add yours.

if [[ "$current" == "ru" ]]; then
	dunstctl close-all && setxkbmap us,ru && dunstify -i /usr/share/icons/Papirus/22x22/panel/indicator-keyboard-En-1.svg -u low  "Layout changed"
else
	dunstctl close-all && setxkbmap ru,us && dunstify -i /usr/share/icons/Papirus/22x22/panel/indicator-keyboard-Ru-1.svg -u low "Layout changed"
fi



#t=$(xset -q | grep LED)
#You can query the LED mask value from xset -q command and then apply 00001000 mask to see if the primary or the seconday layout is in use. Example:
# this will remove all trash in $t before the LED mask:
#mask="${t##*mask:  }"
#not_en_mask="00001004"
# Now we just apply bitwise AND to $mask and see if it is equals zero or not
#[[ $((mask & not_en_mask)) == 0 ]] && layout="EN" || layout="RU"

#if [[ "$layout" == "RU" ]]; then
#	dunstctl close-all && dunstify --timeout=1000 -u low "  Layout: RU"
#else
#	dunstctl close-all && dunstify --timeout=1000 -u low "  Layout: US"
#fi
