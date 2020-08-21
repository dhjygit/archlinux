# Defined in - @ line 1
function youtube --wraps='youtube-dl -f 140+136' --wraps='youtube-dl -f 136+140' --description 'alias youtube youtube-dl -f 136+140'
  youtube-dl -f 136+140 $argv;
end
