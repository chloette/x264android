rm -rf x264
git clone git://git.videolan.org/x264.git
cp build_android.sh x264/
cd x264
chmod a+x build_android.sh
rm -rf .git
rm .gitignore
./build_android.sh
cp ../Android.mk android/arm
