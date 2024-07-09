#!/bin/bash
# KEY-GEN
dnf install sshpass -y

ssh-keygen -t rsa -b 4096 -f "/root/.ssh/id_rsa" -N ""

PASSWORD="P@ssw0rd"

sshpass -p $PASSWORD ssh-copy-id root@10.130.39.21
sshpass -p $PASSWORD ssh-copy-id root@10.130.39.22
sshpass -p $PASSWORD ssh-copy-id root@10.130.39.23
sshpass -p $PASSWORD ssh-copy-id root@10.130.39.31
sshpass -p $PASSWORD ssh-copy-id root@10.130.39.32
sshpass -p $PASSWORD ssh-copy-id root@10.130.39.33
sshpass -p $PASSWORD ssh-copy-id root@10.130.39.11
sshpass -p $PASSWORD ssh-copy-id root@10.130.39.12
sshpass -p $PASSWORD ssh-copy-id root@10.130.39.13
sshpass -p $PASSWORD ssh-copy-id root@10.130.39.41
#sshpass -p $PASSWORD ssh-copy-id -p 10975 root@192.168.24.7

