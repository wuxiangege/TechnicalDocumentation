#!/bin/bash
GATEWAY_ADDS="0.0.0.0:20000"
DOMAIN="com.baidu.api"
ETCD_CLUSTER_ADDS="172.19.76.101:2379,172.20.232.102:2379,172.16.93.103:2379"

nohup micro \
--registry=etcdv3 \
--registry_address=$ETCD_CLUSTER_ADDS \
--client_request_timeout=1m \
api \
--address=$GATEWAY_ADDS \
--namespace=$DOMAIN \
--handler=web \
>/dev/null 2>&1 &


