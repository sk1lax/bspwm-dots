#! /bin/bash
#    __                           __       _____           _       __
#   / /   ____ ___  ______  _____/ /_     / ___/__________(_)___  / /_
#  / /   / __ `/ / / / __ \/ ___/ __ \    \__ \/ ___/ ___/ / __ \/ __/
# / /___/ /_/ / /_/ / / / / /__/ / / /   ___/ / /__/ /  / / /_/ / /_
#/_____/\__,_/\__,_/_/ /_/\___/_/ /_/   /____/\___/_/  /_/ .___/\__/
#                                                       /_/

#						https://github.com/sk1lax/bspwm-dots

pkill redshift-gtk && sleep 1
while pgrep -u $UID -x redshift-gtk >/dev/null; do sleep 1; done
redshift-gtk &
echo "Redshift загрузился..."
pkill polybar && sleep 1
#while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar --config=~/.config/bspwm/polybar/config.ini
echo "Polybar загрузился..."

#xdotool search --name Plank windowraise &
