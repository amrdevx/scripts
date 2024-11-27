#!/bin/sh

CHOOSE=$(printf "POWEROFF\nREBOOT\nZZZ"| dmenu -i -p "choose one")

case $CHOOSE in
	POWEROFF) doas shutdown -h now ;;
	REBOOT) doas reboot ;;
	ZZZ) doas zzz ;;
esac > /dev/null
