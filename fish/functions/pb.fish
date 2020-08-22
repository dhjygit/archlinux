# Defined in - @ line 1
function pb --wraps='setsid bash ~/.config/polybar/toggle_polybar.sh' --description 'alias pb setsid bash ~/.config/polybar/toggle_polybar.sh'
  setsid bash ~/.config/polybar/toggle_polybar.sh $argv;
end
