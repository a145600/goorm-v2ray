#!/bin/bash
#下载核心程序
apt-get -y update
rm -rf /v2ray
mkdir /v2ray
cd /v2ray
wget --no-check-certificate https://github.com/splenddd/goorm-v2ray/raw/master/v2ray
#设置运行权限
chmod +x /v2ray/v2ray
wget --no-check-certificate https://github.com/splenddd/goorm-v2ray/raw/master/v2ctl
chmod +x /v2ray/v2ctl
wget --no-check-certificate https://github.com/splenddd/goorm-v2ray/raw/master/config.json

