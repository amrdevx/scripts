#!/bin/bash

notesFolder="$HOME/notes"
lastNote=$(ls -t "$notesFolder" | head -1)
txt=$(cat "$notesFolder/$lastNote")
notify-send "$txt"
