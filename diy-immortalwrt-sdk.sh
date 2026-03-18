#!/bin/bash

#移除不用软件包
rm -rf feeds/luci/applications/luci-app-dockerman
rm -rf feeds/luci/applications/luci-app-wrtbwmon
rm -rf feeds/packages/net/smartdns
rm -rf feeds/packages/net/mosdns

#添加额外软件包
git clone --depth=1 https://github.com/ykxVK8yL5L/luci-app-taskschedule.git taskschedule-packages
cp -rf taskschedule-packages/luci-app-taskschedule package/luci-app-taskschedule

git clone --depth=1 https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter

git clone --depth=1 https://github.com/gdy666/luci-app-lucky.git lucky-repo
cp -rf lucky-repo/luci-app-lucky package/luci-app-lucky
cp -rf lucky-repo/lucky package/lucky


#git clone --depth=1 https://github.com/kongfl888/luci-app-adguardhome.git package/luci-app-adguardhome
#git clone --depth=1 https://github.com/w9315273/luci-app-adguardhome.git package/luci-app-adguardhome
git clone --depth=1 https://github.com/lisaac/luci-app-dockerman.git
cp -rf luci-app-dockerman/applications/luci-app-dockerman package/luci-app-dockerman
#rm -rf luci-app-dockerman



# 克隆openwrt-passwall仓库
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages.git
cp -rf openwrt-passwall-packages/chinadns-ng package/chinadns-ng
cp -rf openwrt-passwall-packages/tcping package/tcping
#cp -rf openwrt-passwall-packages/trojan-go package/trojan-go
cp -rf openwrt-passwall-packages/trojan-plus package/trojan-plus
#cp -rf openwrt-passwall-packages/ssocks package/ssocks
cp -rf openwrt-passwall-packages/hysteria package/hysteria
#cp -rf openwrt-passwall-packages/dns2tcp package/dns2tcp
cp -rf openwrt-passwall-packages/sing-box package/sing-box
#rm -rf openwrt-passwall-packages

# 克隆openwrt-passwall2仓库
#git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall2.git
#cp -rf openwrt-passwall2/luci-app-passwall2 package/luci-app-passwall2
#rm -rf openwrt-passwall2

# 克隆 helloworld 仓库
#git clone --depth=1 -b master https://github.com/fw876/helloworld.git 
git clone  https://github.com/sbwml/openwrt_helloworld.git helloworld
# 从克隆的仓库中复制需要的目录
cp -rf helloworld/luci-app-passwall2 package/luci-app-passwall2
cp -rf helloworld/dns2tcp package/dns2tcp
cp -rf helloworld/dns2socks-rust package/dns2socks-rust
cp -rf helloworld/shadowsocks-libev package/shadowsocks-libev
cp -rf helloworld/naiveproxy package/naiveproxy
cp -rf helloworld/lua-neturl package/lua-neturl
#cp -rf helloworld/gn package/gn
cp -rf helloworld/xray-core package/xray-core
cp -rf helloworld/xray-plugin package/xray-plugin
cp -rf helloworld/shadow-tls package/shadow-tls
cp -rf helloworld/shadowsocks-rust package/shadowsocks-rust
cp -rf helloworld/shadowsocksr-libev package/shadowsocksr-libev
cp -rf helloworld/v2ray-plugin package/v2ray-plugin
cp -rf helloworld/simple-obfs package/simple-obfs
cp -rf helloworld/trojan package/trojan
cp -rf helloworld/v2ray-core package/v2ray-core
cp -rf helloworld/v2ray-geodata package/v2ray-geodata
#cp -rf helloworld/sagernet-core package/sagernet-core
cp -rf helloworld/microsocks package/microsocks
cp -rf helloworld/redsocks2 package/redsocks2
cp -rf helloworld/ipt2socks package/ipt2socks
cp -rf helloworld/dns2socks package/dns2socks
cp -rf helloworld/tuic-client package/tuic-client
cp -rf helloworld/luci-app-ssr-plus package/luci-app-ssr-plus
#rm -rf helloworld

git clone --depth=1 https://github.com/kenzok8/openwrt-packages.git kenzok8-packages
cp -rf kenzok8-packages/luci-lib-taskd package/luci-lib-taskd
cp -rf kenzok8-packages/taskd package/taskd
cp -rf kenzok8-packages/smartdns package/smartdns
cp -rf kenzok8-packages/luci-app-eqos package/luci-app-eqos
cp -rf kenzok8-packages/luci-lib-xterm package/luci-lib-xterm
cp -rf kenzok8-packages/ddnsto package/ddnsto
cp -rf kenzok8-packages/luci-app-ddnsto package/luci-app-ddnsto
rm -rf kenzok8-packages

# 克隆 kenzok8-packages 仓库
#https://github.com/kenzok8/openwrt-packages
git clone --depth=1 https://github.com/kenzok8/small.git kenzok8-small

cp -rf kenzok8-small/luci-app-passwall package/luci-app-passwall
#cp -rf kenzok8-small/v2ray-geoview package/v2ray-geoview
cp -rf kenzok8-small/mosdns package/mosdns
cp -rf kenzok8-small/v2dat package/v2dat
#cp -rf kenzok8-small/wrtbwmon package/wrtbwmon
cp -rf kenzok8-small/luci-app-mosdns package/luci-app-mosdns
#cp -rf kenzok8-small/luci-theme-edge package/luci-theme-edge
#cp -rf kenzok8-small/luci-app-advanced package/luci-app-advanced
#cp -rf kenzok8-small/luci-app-ikoolproxy package/luci-app-ikoolproxy
#rm -rf kenzok8-small
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 23.x feeds/packages/lang/golang
