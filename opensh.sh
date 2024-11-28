#!/bin/bash

folder="$HOME/.scripts"
scripts=$(ls "$folder" | dmenu)
[ -z "$scripts" ] && exit

cd  "$folder"
setsid -f "$TERMINAL" "$EDITOR" "$folder"/"$scripts"



