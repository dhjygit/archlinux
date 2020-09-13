# Defined in - @ line 1
function wifi --wraps='sudo wpa_supplicant -c /etc/wifi/jnu.conf -i wlp0s20f3 -B' --wraps='sudo wpa_supplicant -c /etc/luis@dhjy~> sudo wpa_supplicant -c /etc/wifi/jnu.conf -i wlp0s20f3 -B && sudo dhcpcd wlp0s20f3' --wraps='sudo wpa_supplicant -c /etc/wifi/jnu.conf -i wlp0s20f3 -B && sudo dhcpcd wlp0s20f3' --description 'alias wifi sudo wpa_supplicant -c /etc/wifi/jnu.conf -i wlp0s20f3 -B && sudo dhcpcd wlp0s20f3'
  sudo wpa_supplicant -c /etc/wifi/jnu.conf -i wlp0s20f3 -B && sudo dhcpcd wlp0s20f3 $argv;
end
