#!/usr/bin/env bash

[ $1 = "up" ] && amixer set Master 5dB+
[ $1 = "down" ] && amixer set Master 5dB-
kill -s 10 $(pidof slstatus)
