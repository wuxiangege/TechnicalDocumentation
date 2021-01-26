#!/bin/bash

#文档
#https://www.cnblogs.com/yifeichongtian/p/12716767.html
#仓库列表
filename="repos.txt"
#从github处申请的token
token="填写你从github申请的token"

#脚本
while read line;
do 
    curl -XDELETE -H 'Authorization: token '$token'' "https://api.github.com/repos/$line";
    echo -e $line
done < $filename
