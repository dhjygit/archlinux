#! /bin/sh
var=`xmodmap -pk|grep '0xffe5 (Caps_Lock)'|awk '{print $1}'`
if [ 66 = $var ]; then
	xmodmap /home/luis/.xmodmap
fi

