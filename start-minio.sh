#!/bin/sh
dir=/mnt/data
addrs=127.0.0.1:9000
account=填写你的账号
password=填写你的密码

chmod +x /usr/local/bin/minio
export MINIO_ACCESS_KEY=$account
export MINIO_SECRET_KEY=$password
nohup minio server --address $addrs $dir >/dev/null 2>&1 &
