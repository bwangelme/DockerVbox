#!/bin/bash
#
# Author: bwangel<bwangel.me@gmail.com>
# Date:8月,22,2023 20:30


# cp /vagrant/vimrc /root/.vimrc

function change_apt_source() {
    echo "修改 apt 源为 ustc"
    sed -i "s/archive.ubuntu.com/mirrors.ustc.edu.cn/g" /etc/apt/sources.list
}

apt-get update && apt-get install -y net-tools ripgrep nfs-kernel-server netcat

