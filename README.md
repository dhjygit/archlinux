# archlinux config

```shell
rfkill list all
rfkill unblock all
timedatectl set-ntp true

fdisk -l
fdisk /dev/nvme0n1
mkfs.ext4 /dev/nvme0n1p9
mkswap /dev/nvme0n1p10
swapon /dev/nvme0n1p10
mkfs.fat -F32 /dev/nvme0n1p11

mount nvme0n1p9 /mnt
mkdir /mnt/boot
mount nvme0n1p11 /mnt/boot

vim /etc/pacman.d/mirrorlist
Server = https://mirrors.163.com/archlinux/$repo/os/$arch

pacstrap /mnt base base-devel linux linux-firmware
genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt

pacman -S neovim
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
hwclock --systohc

nvim /etc/locale.gen
locale-gen
echo LANG=en_US.UTF-8 >> /etc/locale.conf

nvim /etc/hostname
dhjy

nvim /etc/hosts

pacman -S wqy-microhei ttf-dejavu

passwd
passwd luis

127.0.0.1       localhost
::1             localhost
127.0.1.1       dhjy.localdomain  dhjy
199.232.68.133  raw.githubusercontent.com

[archlinuxcn]
Server = https://mirrors.163.com/archlinux-cn/$arch
sudo pacman -S archlinuxcn-keyring

sudo pacman -S neovim sddm xorg i3-wm i3-gaps polybar compton feh alacritty fish rofi
```

