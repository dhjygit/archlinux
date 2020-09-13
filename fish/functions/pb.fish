# Defined in - @ line 1
function pb --wraps='setsid bash /home/luis/.config/polybar/toggle_polybar.sh' --description 'alias pb setsid bash /home/luis/.config/polybar/toggle_polybar.sh'
  setsid bash /home/luis/.config/polybar/toggle_polybar.sh $argv;
end
