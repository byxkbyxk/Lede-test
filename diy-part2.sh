#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
# sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
# https://github.com/messense/aliyundrive-webdav
# git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git ./package/lean/luci-app-jd-dailybonus

sed -i 's/192.168.1.1/192.168.88.1/g' package/base-files/files/bin/config_generate
sed -i 's/luci-theme-bootstrap/luci-theme-infinityfreedom/g' feeds/luci/collections/luci/Makefile
sed -i "s/OpenWrt /${Author} compiled in $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" $ZZZ

# git clone https://github.com/sirpdboy/luci-app-advanced.git ./package/lean/luci-app-advanced
# git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git ./package/luci-theme-infinityfreedom
# git clone https://github.com/destan19/OpenAppFilter.git ./package/OpenAppFilter
# git clone https://github.com/fw876/helloworld.git ./package/helloworld
# git clone https://github.com/vernesong/OpenClash.git ./package/lean/luci-app-openclash
