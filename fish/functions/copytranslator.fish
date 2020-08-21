# Defined in - @ line 1
function copytranslator --wraps='sudo copytranslator --no-sandbox' --description 'alias copytranslator sudo copytranslator --no-sandbox'
  sudo copytranslator --no-sandbox $argv;
end
