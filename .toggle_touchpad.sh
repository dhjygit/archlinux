id=`xinput|grep Touchpad|awk -F '=' '{print $2}'|awk '{print $1}'`
xinput disable $id
