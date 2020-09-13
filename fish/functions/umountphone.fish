# Defined in - @ line 1
function umountphone --wraps='sudo fusermount -u /mnt/phone' --description 'alias umountphone sudo fusermount -u /mnt/phone'
  sudo fusermount -u /mnt/phone $argv;
end
