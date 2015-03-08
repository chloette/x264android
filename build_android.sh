#!/bin/bash
NDK=$NDK_HOME
SYSROOT=$NDK/platforms/android-9/arch-arm/
TOOLCHAIN=$NDK/toolchains/arm-linux-androideabi-4.8/prebuilt/
if [ -d "$TOOLCHAIN/linux-x86_64" ]; then
  TOOLCHAIN+=linux-x86_64
else #treat as darwin
  TOOLCHAIN+=darwin-x86_64
fi
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
