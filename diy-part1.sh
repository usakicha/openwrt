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
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# Add IPQ40XX overclock patch
#git clone https://github.com/yichya/luci-app-xray
#cp -r luci-app-xray ./package/

git clone https://github.com/xiaorouji/openwrt-passwall.git
cp -r ./openwrt-passwall/luci-app-passwall/ ./package/

git clone https://github.com/coolsnowwolf/lede
cp ./lede/target/linux/ipq40xx/patches-5.4/999-ipq40xx-unlock-cpu-frequency.patch ./target/linux/ipq40xx/patches-5.4/
cp -r ./lede/package/lean/luci-app-cpufreq/ ./package/

# getToolchain
#wget https://downloads.openwrt.org/snapshots/targets/ipq40xx/generic/openwrt-sdk-ipq40xx-generic_gcc-8.4.0_musl_eabi.Linux-x86_64.tar.xz
