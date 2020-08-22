#! /bin/sh
(
cat << EFO
---
title: Music
date: 2020-07-14 12:40:52
---
{% aplayerlist %}
{
    "narrow": false,
    "autoplay": false,
    "mode": "random",
    "showlrc": 3,
    "mutex": true,
    "theme": "#e6d0b2",
    "preload": "metadata",
    "listmaxheight": "513px",
    "music": [
EFO
)>/home/luis/wb/source/music/index.md
IFS=$'\n'
cd /home/luis/Music/lx-music
for line in `find *.mp3`;do
    echo '        {'>>/home/luis/wb/source/music/index.md
    {
    echo -n '        "title": "'
    echo -n `echo $line|awk -F ' - ' '{print $1}'`
    echo '",'
    }>>/home/luis/wb/source/music/index.md
    {
    echo -n '        "author": "'
    echo -n `echo $line|awk -F ' - ' '{print $2}'|awk -F '.mp3' '{print $1}'`
    echo '",'
    }>>/home/luis/wb/source/music/index.md
    {
    echo -n '        "url": "https://cdn.jsdelivr.net/gh/dhjygit/cdn.music@master/'
    echo -n `echo $line`
    echo '",'
    }>>/home/luis/wb/source/music/index.md
    {
    echo -n '        "pic": "https://cdn.jsdelivr.net/gh/dhjygit/cdn.music@master/image/'
    echo -n `echo $line|awk -F '.mp3' '{print $1}'`.jpg
    echo '",'
    }>>/home/luis/wb/source/music/index.md
    {
    echo -n '        "lrc": "https://cdn.jsdelivr.net/gh/dhjygit/cdn.music@master/lrc/'
    echo -n `echo $line|awk -F '.mp3' '{print $1}'`.lrc
    echo '"'
    }>>/home/luis/wb/source/music/index.md
    echo '        },'>>/home/luis/wb/source/music/index.md
done
sed -i '$d' /home/luis/wb/source/music/index.md
echo '        }'>>/home/luis/wb/source/music/index.md
echo '    ]'>>/home/luis/wb/source/music/index.md
echo '}'>>/home/luis/wb/source/music/index.md
echo '{% endaplayerlist %}'>>/home/luis/wb/source/music/index.md

