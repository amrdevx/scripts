#!/bin/bash

listWifi=$(nmcli device wifi list | dmenu -i )
[ -z "$listWifi" ] && exit 0

wfi=$(echo -e "$listWifi" | awk '{print $2}')



pass=$(echo "" | dmenu -p "Password" <&-)

[ -z "$pass" ] && notify-send "Connection cancelled" && exit 0

result=$(doas nmcli device wifi connect "$wfi" password "$pass" 2>&1)

notify-send "$result"


