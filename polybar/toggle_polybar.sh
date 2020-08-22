#! /bin/sh
var=`ps -e|grep 'polybar'|awk '{print $4}'`
if [[ polybar = $var ]]; then
	killall polybar
else
    polybar luispolybar
fi
