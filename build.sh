# git clone https://git.eden-emu.dev/eden-emu/eden
# cd eden
# git submodule update --init --recursive
# git apply ../1.patch
git clone https://github.com/moze30/winlator-glibc.git
cd winlator-glibc
git submodule update --init --recursive
#cd src/android
chmod +x ./gradlew
#./gradlew copyMainlineReleaseOutputs --console=plain --info -Dorg.gradle.caching=true
#./gradlew bundleRelease
./gradlew assembleDebug
tar -zvcf eden.tar.gz app/build/outputs/apk

#APK_PATH=$(find app/build/outputs/apk -type f -name "*.apk" | head -n 1)
#AAB_PATH=$(find app/build/outputs/bundle -type f -name ".aab" | head -n 1)
#mv "$APK_PATH" ./eden.apk
#mv "$AAB_PATH" ./eden.aab
