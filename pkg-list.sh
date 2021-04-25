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
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/tcpping
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/redsocks2

# ---< System >---
#
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-netdata
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-autoreboot
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-lib-fs  # for filetransfer
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-filetransfer

# ---< Science online >---
#
# OpenClash
#git clone https://github.com/frainzy1477/luci-app-clash
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash
# PassWall
git clone https://github.com/garypang13/smartdns-le # for luci-app-bypass
git clone https://github.com/garypang13/luci-app-bypass
sed -i 's/shadowsocksr-libev-ssr-redir/shadowsocksr-libev-alt/g' luci-app-bypass/Makefile	# for bypass
sed -i 's/shadowsocksr-libev-ssr-server/shadowsocksr-libev-server/g' luci-app-bypass/Makefile	# for bypass
git clone https://github.com/xiaorouji/openwrt-passwall
mv_dir openwrt-passwall 
# SSR-Plus
git clone https://github.com/fw876/helloworld
mv_dir helloworld
git clone https://github.com/jerrykuku/luci-app-vssr

# ---< Anti advertising >---
#
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/adbyby
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-adbyby-plus
git clone https://github.com/garypang13/luci-app-dnsfilter
git clone https://github.com/project-lede/luci-app-godproxy

# ---< Game >---
#
git clone https://github.com/BCYDTZ/luci-app-UUGameAcc

# ---< Network >---
#
git clone https://github.com/garypang13/luci-app-eqos   # speed limit
svn co https://github.com/garypang13/openwrt-packages/trunk/gost # for luci-app-gost
svn co https://github.com/immortalwrt/luci/trunk/applications/luci-app-gost
change_dir luci-app-gost/Makefile
svn co https://github.com/immortalwrt/luci/trunk/applications/luci-app-smartdns
change_dir luci-app-smartdns/Makefile
svn co https://github.com/immortalwrt/luci/trunk/applications/luci-app-aliddns
change_dir luci-app-aliddns/Makefile
svn co https://github.com/sirpdboy/netspeedtest/trunk/speedtest
svn co https://github.com/sirpdboy/netspeedtest/trunk/luci-app-netspeedtest
svn co https://github.com/Tencent-Cloud-Plugins/tencentcloud-openwrt-plugin-ddns/trunk/tencentcloud_ddns luci-app-tencentddns
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-koolddns
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-flowoffload # Turbo ACC: FLOW,BBR,NAT,DNS.

# ---< Others >---
#
git clone https://github.com/tty228/luci-app-serverchan
git clone https://github.com/zzsj0928/luci-app-serverchand
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/UnblockNeteaseMusic
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/UnblockNeteaseMusicGo
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-unblockmusic
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/vlmcsd
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-vlmcsd  # crack KMS server

# ---< Theme >---
#
git clone https://github.com/garypang13/luci-theme-edge
git clone https://github.com/jerrykuku/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config
svn co https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom/trunk/luci-theme-infinityfreedom


rm -rf ./*/.git ./*/.gitattributes ./*/.svn ./*/.github ./*/.gitignore

exit 0    
