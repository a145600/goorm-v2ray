#!/bin/bash
#下载核心程序
apt-get -y update
apt install curl -y
apt install unzip -y
mkdir /tmp/v2ray
curl -L -H "Cache-Control: no-cache" -o /tmp/v2ray/v2ray.zip https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip
unzip /tmp/v2ray/v2ray.zip -d /tmp/v2ray
install -m 755 /tmp/v2ray/v2ray /usr/local/bin/v2ray
install -m 755 /tmp/v2ray/v2ctl /usr/local/bin/v2ctl

rm -rf /tmp/v2ray

install -d /usr/local/etc/v2ray
wget -P /usr/local/etc/v2ray https://github.com/byxiaopeng/goorm-v2ray/raw/master/config.json


#修改系统为北京时间
cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
# 开始后台运行
nohup /usr/local/bin/v2ray -config /usr/local/etc/v2ray/config.json >out.txt 2>&1 &
