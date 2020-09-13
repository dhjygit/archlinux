```shell
sudo pacman -S libmtp mtpfs simple-mtpfs

su -
mkdir /mnt/phone
simple-mtpfs -l
simple-mtpfs --device 1 /mnt/phone
fusermount -u /mnt/phone
```

```shell
alias "mountphone" "sudo simple-mtpfs --device 1 /mnt/phone"
funcsave mountphone
alias "umountphone" "sudo fusermount -u /mnt/phone"
funcsave umountphone
```

```shell
mountphone
su -
cd /mnt/phone
umountphone
```
