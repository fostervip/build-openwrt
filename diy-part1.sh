#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# sed -i "/helloworld/d" "feeds.conf.default"
#echo -e "src-git helloworld https://github.com/fw876/helloworld.git" >> "feeds.conf.default"
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# Test! Add a feed source ...
#echo 'src-git kenzo https://github.com/66o99/openwrt-packages' >>feeds.conf.default
#echo 'src-git small https://github.com/66o99/small' >>feeds.conf.default
#检查 feeds.conf.default 的最后一个字符是否为换行符。如果不是，则追加一个空行。最后添加目标内容
sed -i "/helloworld/d" "feeds.conf.default"
if [ "$(tail -c1 feeds.conf.default)" != "" ]; then
    echo "" >> "feeds.conf.default"
fi
echo "src-git helloworld https://github.com/fw876/helloworld.git" >> "feeds.conf.default"

