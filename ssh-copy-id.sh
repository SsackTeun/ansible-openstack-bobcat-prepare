#!/bin/bash
# KEY-GEN
dnf install sshpass -y

ssh-keygen -t rsa -b 4096 -f "/root/.ssh/id_rsa" -N ""

PASSWORD="P@ssw0rd"

servers=(
    "10.130.39.21"
    "10.130.39.22"
    "10.130.39.23"
    "10.130.39.31"
    "10.130.39.32"
    "10.130.39.11"
    "10.130.39.12"
    "10.130.39.13"
    "10.130.39.42"
)

for server in "${servers[@]}"
do
    sshpass -p "$PASSWORD" ssh-copy-id -f "root@$server"
done
