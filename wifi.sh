#!/bin/bash

listWifi=$(nmcli device wifi list | dmenu -i )
wfi=$(echo -e "$listWifi" | awk '{print $2}')

[ -z "$listWifi" ] && exit 0

pass=$(echo "" | dmenu -p "Password")
result=$(doas nmcli device wifi connect "$wfi" password "$pass" 2>&1)

notify-send "$result"


