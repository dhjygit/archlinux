#! /bin/bash
IFS=$'\n'
cd /home/luis/Music/lx-music
for line in `find *.mp3`;do
    echo $line
    eyeD3 --write-images=./ $line
    mv FRONT_COVER.jpg `echo $line|awk -F '.mp3' '{print $1}'`.jpg
done
cd -
cp /home/luis/Music/lx-music/*.lrc /home/luis/Github/cdn.music/lrc/
cp /home/luis/Music/lx-music/*.jpg /home/luis/Github/cdn.music/image/
cp /home/luis/Music/lx-music/*.mp3 /home/luis/Github/cdn.music/
