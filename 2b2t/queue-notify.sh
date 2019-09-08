#!/bin/bash

oldplace="0"
while inotifywait -e modify ~/.minecraft/logs/latest.log > /dev/null 2>&1; do
	newplace=$(sed 's/\[[0-9]\{2\}:[0-9]\{2\}:[0-9]\{2\}\] \[Client thread\/INFO\]: \[CHAT\] Position in queue: //p' ~/.minecraft/logs/latest.log | tail -n1)
	if [ $newplace != $oldplace ]; then
		notify-send "Position in queue: $newplace"
		oldplace=$newplace
	fi
done
