#!/bin/bash
NDK=$NDK10
SYSROOT=$NDK/platforms/android-9/arch-arm/
TOOLCHAIN=$NDK/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64

function build_one
{
./configure \
    --prefix=$PREFIX \
    --enable-static \
    --cross-prefix=$TOOLCHAIN/bin/arm-linux-androideabi- \
	--disable-asm \
	--disable-cli \
	--host=arm-linux \
    --sysroot=$SYSROOT \
    --extra-cflags="-Os -fpic $ADDI_CFLAGS" \
    --extra-ldflags="$ADDI_LDFLAGS" \
    $ADDITIONAL_CONFIGURE_FLAG
make clean
make
make install
}
CPU=arm
PREFIX=$(pwd)/android/$CPU 
ADDI_CFLAGS="-marm"
build_one
