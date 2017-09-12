#!/usr/bin/sudo /bin/bash
sudo rm -r kernel-out/
ARCH=arm64
CROSS_COMPILE=aarch64-linux-gnu-
KERNEL=kernel8.img
INSTALL_FW_PATH=$(pwd)/kernel-out/
INSTALL_MOD_PATH=$(pwd)/kernel-out/
INSTALL_HDR_PATH=$(pwd)/kernel-out/usr/
INSTALL_PATH=$(pwd)/boot/
mkdir -p kernel-out/boot/ kernel-out/usr/bin/ kernel-out/lib/modules/ kernel-out/lib/firmware/
cp $(pwd)/imnx/kernel_config $(pwd)/.config
export ARCH CROSS_COMPILE KERNEL INSTALL_FW_PATH INSTALL_MOD_PATH INSTALL_PATH
/bin/bash
