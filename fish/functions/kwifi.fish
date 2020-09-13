# Defined in - @ line 1
function kwifi --wraps='sudo killall wpa_supplicant dhcpcd' --description 'alias kwifi sudo killall wpa_supplicant dhcpcd'
  sudo killall wpa_supplicant dhcpcd $argv;
end
