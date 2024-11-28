#!/bin/bash

confDir="$HOME/.config"

cd "$confDir"

file=$(find "$confDir" -type d -printf "%f\n" | dmenu)

filePath="$confDir/$file"

[ -z "$file" ] && exit 0 

if [ -f "$filePath" ]; then
    setsid -f "$TERMINAL" "$EDITOR" "$filePath"
else
    notify-send "Error" "File does not exist: $filePath"
    exit 0
fi


