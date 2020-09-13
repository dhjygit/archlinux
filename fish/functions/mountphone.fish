# Defined in - @ line 1
function mountphone --wraps='sudo simple-mtpfs --device 1 /mnt/phone' --description 'alias mountphone sudo simple-mtpfs --device 1 /mnt/phone'
  sudo simple-mtpfs --device 1 /mnt/phone $argv;
end
