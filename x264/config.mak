SRCPATH=.
prefix=/mnt/x264/x264/android/arm
exec_prefix=${prefix}
bindir=${exec_prefix}/bin
libdir=${exec_prefix}/lib
includedir=${prefix}/include
ARCH=ARM
SYS=LINUX
CC=/mnt/ndk/android-ndk-r10/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64/bin/arm-linux-androideabi-gcc
CFLAGS=-Wno-maybe-uninitialized -Wshadow -O3 -ffast-math  -Wall -I. -I$(SRCPATH) --sysroot=/mnt/ndk/android-ndk-r10/platforms/android-9/arch-arm/ -Os -fpic -marm -std=gnu99 -fomit-frame-pointer -fno-tree-vectorize
COMPILER=GNU
COMPILER_STYLE=GNU
DEPMM=-MM -g0
DEPMT=-MT
LD=/mnt/ndk/android-ndk-r10/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64/bin/arm-linux-androideabi-gcc -o 
LDFLAGS= --sysroot=/mnt/ndk/android-ndk-r10/platforms/android-9/arch-arm/  -lm  -ldl
LIBX264=libx264.a
AR=/mnt/ndk/android-ndk-r10/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64/bin/arm-linux-androideabi-ar rc 
RANLIB=/mnt/ndk/android-ndk-r10/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64/bin/arm-linux-androideabi-ranlib
STRIP=/mnt/ndk/android-ndk-r10/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64/bin/arm-linux-androideabi-strip
INSTALL=install
AS=
ASFLAGS= -I. -I$(SRCPATH) -DSTACK_ALIGNMENT=16 -DHIGH_BIT_DEPTH=0 -DBIT_DEPTH=8
RC=
RCFLAGS=
EXE=
HAVE_GETOPT_LONG=1
DEVNULL=/dev/null
PROF_GEN_CC=-fprofile-generate
PROF_GEN_LD=-fprofile-generate
PROF_USE_CC=-fprofile-use
PROF_USE_LD=-fprofile-use
HAVE_OPENCL=yes
default: lib-static
install: install-lib-static
LDFLAGSCLI = -ldl 
CLI_LIBX264 = $(LIBX264)
