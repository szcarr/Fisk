#!/bin/bash
rm -rf /usr/src/app/runs/detect/*
scp -r scp092@192.168.1.157:~/Documents/Fisk .
# mkdir model
# scp -r isak@192.168.1.131:~/aleksdocker/test/ .
# scp scp092@192.168.1.157:~/Documents/Fisk/hentfisk.sh .
# scp -r isak@192.168.1.131:/home/isak/fiskAI/test.mp4 . #hentar test fila
cp /usr/src/app/Fisk/src/programfiles/detect.py .
cp /usr/src/app/Fisk/hentfisk.sh .
$1
scp -r /usr/src/app/runs/detect/exp scp092@192.168.1.157:~/Pictures/FerdigeFisk/