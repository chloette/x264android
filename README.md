x264android
===========
(x264 README is listed below)
x264android is a source project for Android NDK, which contains latest X264 codecs, and **ANDROID-USE-ONLY libraries compiled with x264 encoders**

***Please make sure, before you follow "How to xxx" below, you already knew what's `ndk-build`, `environment-variable` and similar basic technologies.***

##How to use
1. Download [Android NDK](https://developer.android.com/tools/sdk/ndk/index.html)
2. Put the whole `x264/*` folder (actually, only `x264/android/*` folder should be enough.) under `$NDK/sources/x264/`
3. Add reference `$(call import-module, x264/android/arm)` into Android.mk of your NDK project.
4. Now ndk-build should work. Tada~

##How to compile static libraries (BE CARE : LGPL limitation) by **DEFAULT**
1. Add path of ndk10 as environment variable : `$NDK10`
2. Now you can copy `build_android.sh` into x264 folder and run it to compile. ***Tada~***

##How to compile shared libraries
1. Follow step 1 and 2 of "How to compile (shared libraries)"
2. Use `--enable-shared` instead of `--enable-static` in `build_android.sh`
3. Now you can run `build_android.sh` to compile shared libraries. ***Tada~***
4. One more thing, modify `Android.mk`, use `PREBUILT_SHARED_LIBRARY` instead of `PREBUILT_STATIC_LIBRARY`; And use `lib***.so` instead of `lib***.a`

BTW, If want to compile into ffmpeg, please use [@ffmpeg4android](https://github.com/chloette/ffmpeg4android) directly.

##Environment
***Android NDK*** only. T_T

##License
Should be same as x264...

##Contact
Any problems please contact me [@x264](https://github.com/chloette/x264android) or `chloette.e@gmail.com`


---

##x264
>x264 is a free software library and application for encoding video streams into the H.264/MPEG-4 AVC compression format, and is released under the terms of the ***GNU GPL***.