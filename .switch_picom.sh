#! /bin/sh
var=`ps -e|grep 'picom'|awk '{print $4}'`
if [ picom = $var ]; then
	killall picom
else
	picom -b
fi
