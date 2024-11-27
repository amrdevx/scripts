#!/bin/bash

folder="$HOME/notes"


newNote () {
	newOne="$(date '+%b %d (%a) %I:%M:%p')"
    newNotePath="$folder/$newOne.txt"
    setsid -f "$TERMINAL" vim "$newNotePath"  # Open the note in Vim
}

getNote () {
	note=$(echo -e "New\n$(ls "$folder")" | dmenu -i -p "Select one")
	case $note in
		New) newNote ;;
		*.txt) setsid -f "$TERMINAL" vim "$folder/$note";;
		*) exit;;
	esac

}

if [ ! -d "$folder" ];then
 	notify-send -h string:fgcolor:#ff4444 "Notes directory isn't exist and now done" -h string:bgcolor:#000
	mkdir $HOME/notes
else
	getNote
fi




