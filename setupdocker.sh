#!/bin/bash

#    scp scp092@192.168.1.157:~/Documents/Fisk/setupdocker.sh . ; chmod -x ./setupdocker.sh ; sh ./setupdocker.sh

ssh-keygen
ssh-copy-id -i ~/.ssh/id_rsa scp092@192.168.1.157

mkdir ./testmodels

scp isak@192.168.1.131:~/aleksdocker/test/NilsV1.pt ./testmodels
scp scp092@192.168.1.157:~/Documents/Fisk/hentfisk.sh .
scp -r isak@192.168.1.131:/home/isak/fiskAI/test.mp4 . #hentar test fila

pip install pascal_voc_writer

apt install sshfs -y
mkdir ./storage
sshfs -o allow_other,default_permissions scp092@192.168.1.199:/RAID/storage/ ./storage/