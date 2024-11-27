#!/bin/bash

# lsblk,doas blkid,doas fdisk -l,lsusb,df,mount,pmount
#
usb_devices=$(doas blkid | awk '{print $1}' | tr -d ":" | dmenu)
usb_dir=${usb_devices/\/dev\//\/media\/} 
use_dir2=$(ls /media)

echo $use_dir2
if [ ! -d $use_dir2 ];then
	echo "true"
fi

#if [ "$usb_devices" = "" ];then
#	exit
#else
#	if [ ! -d $usb_dir ];then
#		udevil mount $usb_devices
#		echo $usb_devices "Mounted" | dmenu
#	else
#		udevil umount $usb_devices
#		echo $usb_devices "Umounted" | dmenu 
#
#	fi
#fi
