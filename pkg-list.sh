#!/bin/bash
#
# Copyright (C) 2021 Acusp
#
# <https://github.com/acusp/AC-OpenWrt>
#
# Use git or svn clone useful packages for OpenWrt.
#

# ---< Function >---
#
change_dir() {
    sed -i "s/..\/..\/luci.mk/\$\(TOPDIR\)\/feeds\/luci\/luci.mk/g" $1
}

mv_dir() {
    [ -e $1/README.md ] && rm $1/README.md
    mv $1/* . && rm -rf $1 
}

# ---< Common dependency >---
#
svn co https://github.com/garypang13/openwrt-packages/trunk/lua-maxminddb
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/tcping

# ---< Science online >---
#
# OpenClash
#git clone https://github.com/frainzy1477/luci-app-clash
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash
# PassWall
git clone https://github.com/garypang13/smartdns-le # for luci-app-bypass
git clone https://github.com/garypang13/luci-app-bypass
git clone https://github.com/xiaorouji/openwrt-passwall
mv_dir openwrt-passwall 
# SSR-Plus
git clone https://github.com/fw876/helloworld
mv_dir helloworld
git clone https://github.com/jerrykuku/luci-app-vssr

# ---< Anti advertising >---
#
git clone https://github.com/garypang13/luci-app-dnsfilter
svn co https://github.com/immortalwrt/packages/trunk/net/adguardhome # for luci-app-adguardhome
svn co https://github.com/immortalwrt/luci/trunk/applications/luci-app-adguardhome
change_dir luci-app-adguardhome/Makefile
git clone https://github.com/project-lede/luci-app-godproxy

# ---< Game >---
#
git clone https://github.com/BCYDTZ/luci-app-UUGameAcc

# ---< Network >---
#
git clone https://github.com/garypang13/luci-app-eqos
svn co https://github.com/garypang13/openwrt-packages/trunk/gost # for luci-app-gost
svn co https://github.com/immortalwrt/luci/trunk/applications/luci-app-gost
change_dir luci-app-gost/Makefile
svn co https://github.com/immortalwrt/luci/trunk/applications/luci-app-smartdns
change_dir luci-app-smartdns/Makefile
svn co https://github.com/immortalwrt/luci/trunk/applications/luci-app-aliddns
change_dir luci-app-aliddns/Makefile
svn co https://github.com/sirpdboy/netspeedtest/trunk/luci-app-netspeedtest
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
