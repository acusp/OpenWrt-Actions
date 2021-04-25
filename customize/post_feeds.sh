#
# Copyright (C) 2021 Acusp
#
# <https://github.com/acusp/OpenWrt-Actions>
#

# change luci default theme
sed -i "s/luci-theme-bootstrap/luci-theme-argon/" ./feeds/luci/collections/luci/Makefile

