#!/bin/bash

devices=$(doas fdisk -l | grep '^/dev/sd[b-z]' | awk '{print $1}' | dmenu)

mountFolder="$HOME/mount"
notify=""

[ ! -d "$mountFolder" ] && mkdir -p "$mountFolder"

if [ -z "$devices" ]; then
		exit
fi



if findmnt -rn -S "$devices" > /dev/null ; then
	pumount "$devices"
	if [ $? -ne 0  ] ;then
	 	notify="CAN'T MOUNT ROOT"
	else
		notify="The device $devices is unmounted."
	fi
else
	if [ -n "$devices" ]; then
		pmount "$devices" "$mountFolder"
		notify="Mounted $devices to $mountFolder"
	else
		notify="No device selected."
	fi
fi


notify-send "$notify"
