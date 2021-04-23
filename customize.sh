#!/bin/bash
#
# Copyright (C) 2021 Acusp
#
# <https://github.com/acusp/AC-OpenWrt>
#
# Use git or svn clone useful packages for OpenWrt.
#

# ---< Common dependency >---
#
svn co https://github.com/garypang13/openwrt-packages/trunk/lua-maxminddb

# ---< Science online >---
#
# OpenClash
git clone https://github.com/frainzy1477/luci-app-clash
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash
# PassWall
git clone https://github.com/garypang13/smartdns-le
git clone https://github.com/garypang13/luci-app-bypass
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/luci-app-passwall
# SSR-Plus
svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus
git clone https://github.com/jerrykuku/luci-app-vssr

# ---< Anti advertising >---
#
git clone https://github.com/garypang13/luci-app-dnsfilter
#svn co https://github.com/immortalwrt/packages/trunk/net/adguardhome
svn co https://github.com/immortalwrt/luci/trunk/applications/luci-app-adguardhome
git clone https://github.com/project-lede/luci-app-godproxy

# ---< Game >---
#
git clone https://github.com/BCYDTZ/luci-app-UUGameAcc

# ---< Network >---
#
git clone https://github.com/garypang13/luci-app-eqos
svn co https://github.com/immortalwrt/luci/trunk/applications/luci-app-gost
#svn co https://github.com/immortalwrt/packages/trunk/net/smartdns
svn co https://github.com/immortalwrt/luci/trunk/applications/luci-app-smartdns
svn co https://github.com/sirpdboy/netspeedtest/trunk/luci-app-netspeedtest
svn co https://github.com/immortalwrt/luci/trunk/applications/luci-app-aliddns
svn co https://github.com/Tencent-Cloud-Plugins/tencentcloud-openwrt-plugin-ddns/trunk/tencentcloud_ddns luci-app-tencentddns
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-koolddns

# ---< Others >---
#
git clone https://github.com/tty228/luci-app-serverchan
git clone https://github.com/zzsj0928/luci-app-serverchand
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus

# ---< Theme >---
#
git clone https://github.com/garypang13/luci-theme-edge
git clone https://github.com/jerrykuku/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config
svn co https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom/trunk/luci-theme-infinityfreedom


rm -rf ./*/.git ./*/.gitattributes ./*/.svn ./*/.github ./*/.gitignore

exit 0    
