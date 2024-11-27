#!/bin/bash

confDir="$HOME/.config"

file=$(  ls "$confDir" | dmenu  )
[ -z "$file" ] && exit

setsid -f "$TERMINAL" "$EDITOR" "$confDir"/"$file"
