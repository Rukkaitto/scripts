
#!/bin/bash

if [ $# != 1 ]; then
	echo "Usage: $0 <full|window|select>"
fi

mode=$1
filename="/home/lucas/screenshots/$(date +%F_%T).png"

case $mode in
	full) import -window root $filename ; cat $filename | xclip -selection clipboard -target image/png -i ; notify-send --expire-time=3000 "*Snap*" \ "Yep, this one's going in my /home/lucas/screenshots/ folder.";;
	window) scrot -u $filename ; cat $filename | xclip -selection clipboard -target image/png -i ; notify-send "*Snap*" \ "Yep, this one's going in my /home/lucas/screenshots/ folder.";;
	select) import $filename ; cat $filename | xclip -selection clipboard -target image/png -i ; notify-send "*Snap*" \ "Yep, this one's going in my /home/lucas/screenshots/ folder.";;
	*) echo "Usage: $0 <full|window|select>";;
esac

