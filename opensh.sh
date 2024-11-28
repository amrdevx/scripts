#!/bin/bash

folder="$HOME/.scripts"
scripts=$(ls "$folder" | dmenu)


[ -z "$scripts" ] && exit

setsid -f "$TERMINAL" "$EDITOR" "$folder"/"$scripts"


