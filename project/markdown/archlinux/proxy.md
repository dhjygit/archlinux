# Proxy

```shell
sudo pacman -S v2ray qv2ray proxychains
```

proxychains:

```shell
sudo nvim /etc/proxychains.conf
```

```file_content
[ProxyList]
# add proxy here ...
# meanwile
# defaults set to "tor"
socks5  127.0.0.1 7891
```

