#!/bin/sh
#访问地址
WEBSITE="0.0.0.0:2000"
#域
DOMAIN="com.baidu.api"
#服务发现集群
ETCD_CLUSTER_ADDS="172.19.76.101:2379,172.20.232.102:2379,172.16.93.103:2379"

#启动
nohup micro \
--registry=etcdv3 \
--registry_address=$ETCD_CLUSTER_ADDS web \
--address=$WEBSITE \
--namespace=$DOMAIN \
>/dev/null 2>&1 & 
