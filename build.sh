git clone https://git.eden-emu.dev/eden-emu/eden
cd eden
git submodule update --init --recursive
cd src/android
chmod +x ./gradlew
./gradlew assembleRelease --console=plain --info -Dorg.gradle.caching=true
./gradlew bundleRelease
cd app/build
tar -zcvf eden.tar.gz outputs

#APK_PATH=$(find app/build/outputs/apk -type f -name "*.apk" | head -n 1)
#AAB_PATH=$(find app/build/outputs/bundle -type f -name ".aab" | head -n 1)
#mv "$APK_PATH" ./eden.apk
#mv "$AAB_PATH" ./eden.aab

