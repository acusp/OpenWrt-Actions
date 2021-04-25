#
# Copyright (C) 2021 Acusp
#
# <https://github.com/acusp/OpenWrt-Actions>
#

cp -f ../banner ./package/base-files/files/etc/banner
sed -i '$a src-git custom https://github.com/acusp/OpenWrt-Packages' ./feeds.conf.default

#sed -i 's/192.168.1.1/192.168.2.240/g' ./package/base-files/files/bin/config_generate
#sed -i "s/hostname='OpenWrt/hostname='AC-OpenWrt/g" ./package/base-files/files/bin/config_generate
#sed -i "s/timezone='UTC/timezone='CST-8/g" ./package/base-files/files/bin/config_generate

# for Lean
#rm -rf ./package/lean/luci-theme-argon
