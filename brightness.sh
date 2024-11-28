#!/bin/bash

degree=$(echo -e  "10%\n20%\n30%\n40%\n50%\n60%\n70%\n80%\n90%\n100%" | dmenu -p "choose one")


case "$degree" in
  "10%"|"20%"|"30%"|"40%"|"50%"|"60%"|"70%"|"80%"|"90%"|"100%") brightnessctl set "$degree" ;;
esac
