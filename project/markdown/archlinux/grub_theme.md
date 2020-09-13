```shell
sudo cp -r luisgrub /boot/grub/themes/
sudo nvim /etc/grub.d/00_header

GRUB_THEME="/boot/grub/themes/LuisGrubTheme/theme.txt"
GRUB_GFXMODE="1920x1080x32"

sudo grub-mkconfig -o /boot/grub/grub.cfg
```

