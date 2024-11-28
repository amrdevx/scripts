#!/bin/bash

degree=$(echo -e  "10%\n20%\n30%\n40%\n50%\n60%\n70%\n80%\n90%\n100%" | dmenu -p "choose one")


case "$degree"  in
	"10%") brightnessctl set 10%;;
	"20%") brightnessctl set 20%;;
	"30%") brightnessctl set 30%;;
	"40%") brightnessctl set 40%;;
	"50%") brightnessctl set 50%;;
	"60%") brightnessctl set 60%;;
	"70%") brightnessctl set 70%;;
	"80%") brightnessctl set 80%;;
	"90%") brightnessctl set 90%;;
	"100%") brightnessctl set 100%;;
esac
