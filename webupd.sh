#!/bin/sh

URL="http://127.0.0.1"
old="old.html"
new="new.html"

while true; do
	curl -s $URL -o $new
	if ! cmp -s $old $new; then
		notify-send "webupd" "$URL is updated"
		mv $new $old
	else
		rm $new
	fi
	sleep 5

done
