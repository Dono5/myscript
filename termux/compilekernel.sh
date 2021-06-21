#!/bin/bash
export KBUILD_BUILD_USER=jancok
export KBUILD_BUILD_HOST=asu
# Compile plox
function compile() {
    make -j$(nproc) O=out ARCH=arm64 RMX1801_defconfig
    make -j$(nproc) ARCH=arm64 O=out \
                               CROSS_COMPILE=aarch64-linux-gnu- \
                               CROSS_COMPILE_ARM32=arm-linux-gnueabi-
}
compile
