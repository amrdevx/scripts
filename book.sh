#!/bin/sh

# Prompt the user to select a directory from $HOME/books
booksDir=$(ls "$HOME/books" | dmenu -p "Select a directory:")
[ -z "$booksDir" ] && exit 1  # Exit if no selection is made

# Change to the selected directory
cd "$HOME/books/$booksDir" || exit 1

# Prompt the user to select a book
bookFile=$(ls | dmenu -p "Select a book:")
[ -z "$bookFile" ] && exit 1  # Exit if no selection is made

# Construct the full path to the book and open it
bookPath="$HOME/books/$booksDir/$bookFile"
zathura "$bookPath" &

