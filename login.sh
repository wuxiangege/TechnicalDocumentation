#!/usr/bin/expect
set timeout 30
set user "账号"
set pass "密码"
set addr "地址"
set port  端口号

spawn ssh -p $port $user@$addr
expect "*password:"
send "$pass\r"
expect "*#"

interact
