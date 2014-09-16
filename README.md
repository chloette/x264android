x264android
===========
(x264 README is listed below)
x264android is a source project for Android NDK, which contains latest X264 encoders.

##How to use
1. Download [Android NDK](https://developer.android.com/tools/sdk/ndk/index.html)
2. Put this whole folder (actually, only `x264/android/*` folder should be enough.) under `$NDK/sources/x264/android/`
3. Add reference `$(call import-module, x264/android/arm)` into Android.mk of your NDK project.
4. Now ndk-build should work. Tada~
5. If want to compile into ffmpeg, please use [@ffmpeg4android](https://github.com/chloette/ffmpeg4android) directly.

##License
Should be same as x264...

##Contact
Any problems please contact me [@x264](https://github.com/chloette/x264android) or `chloette.e@gmail.com`


---

