rm -rf x264
git clone git://git.videolan.org/x264.git
cp build_android10.sh x264/
cd x264
rm -rf .git
rm .gitignore
./build_android10.sh
cp ../Android.mk android/arm
