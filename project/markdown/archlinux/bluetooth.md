首先要安装相关的程序：
sudo pacman -S bluez bluez-utils obexfs

如果尚未加载通用蓝牙驱动则需先加载：
# modprobe btusb

然后运行：
# hciconfig -a
# hciconfig hci0 up

配置蓝牙（此步之前可能需要重启一下机子）：
$ bluetoothctl

列出可用的蓝牙控制器：
[bluetooth]#list

显示控件器信息：
[bluetooth]#show controller_mac_address

设为默认控件器：
[bluetooth]#select controller_mac_address

加电：
[bluetooth]#power on

启用接口：
[bluetooth]#agent on
[bluetooth]#default-agent

将蓝牙控制器设为可发现、可配对：
[bluetooth]#discoverable on
[bluetooth]#pairable on

搜索周围的蓝牙设备：
[bluetooth]#scan on

发现设置的MAC地址：
[bluetooth]#devices

配对：
[bluetooth]#pair device_mac_address

输入PIN码（如果需要的话）:
[agent]PIN code: ####

设为信任设备：
[bluetooth]#trust device_mac_address

连接设备:（此步可不做）
[bluetooth]#connect device_mac_address

列出设备的相关信息：
[bluetooth]#info device_mac_address

退出：
[bluetooth]#quit

然后把手机作为文件系统的一部分挂载在计算机上：

# groupadd bluetooth
# mkdir /mnt/bluetooth
# chown root:bluetooth /mnt/bluetooth
# chmod 775 /mnt/bluetooth
# usermod -a -G bluetooth tony
# obexfs -b 00:26:69:D5:F8:C3 /mnt/bluetooth

这样就可以用文件管理器查看手机里的内容了

卸载命令：
sudo umount /mnt/bluetooth

注：为方便使用，可以写一个脚本，名为bt，放在/usr/bin中，内容如下：
#! /bin/sh
hciconfig hci0 up
obexfs -b 00:26:69:D5:F8:C3 /mnt/bluetooth

以后要使用蓝牙时，只需sudo bt即可。
