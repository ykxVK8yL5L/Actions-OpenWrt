#!/bin/bash
sed -i 's/192.168.1.1/192.168.1.168/g' package/base-files/files/bin/config_generate

# 颜色定义
RED_COLOR='\033[0;31m'
GREEN_COLOR='\033[0;32m'
YELLOW_COLOR='\033[1;33m'
BLUE_COLOR='\033[0;34m'
CYAN_COLOR='\033[0;36m'
RES='\033[0m'
CURL_BAR="--progress-bar"

# Toolchain Cache
TOOLCHAIN_URL=https://github.com/oppen321/openwrt_caches/releases/download/OpenWrt_Toolchain_Cache
echo -e "\n${GREEN_COLOR}Download Toolchain GCC13...${RES}"
curl -L -k ${TOOLCHAIN_URL}/toolchain_gcc13_x86_64.tar.zst -o toolchain.tar.zst $CURL_BAR
echo -e "\n${GREEN_COLOR}Process Toolchain ...${RES}"
sudo tar -I "zstd" -xf toolchain.tar.zst
rm -f toolchain.tar.zst
#mkdir bin
sudo find ./staging_dir/ -name '*' -exec touch {} \; >/dev/null 2>&1
sudo find ./tmp/ -name '*' -exec touch {} \; >/dev/null 2>&1

# init openwrt config
sudo rm -rf tmp/*
sudo chmod -R 777 staging_dir
sudo chnod -R 777 tmp
