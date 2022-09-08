xcodebuild -scheme core-swift -destination "generic/platform=iOS" -sdk iphoneos -configuration Release ARCHS="x86_64 arm64" BUILD_DIR="./Build"

cd ./Build/Release-iphoneos

ar -crs libCoreSwift.a core-swift.o

cd ../../

xcodebuild -scheme core-swift -destination "generic/platform=iOS Simulator" -sdk iphonesimulator -configuration Release ARCHS="arm64" BUILD_DIR="./Build"

cd ./Build/Release-iphonesimulator

ar -crs libCoreSwift.a core-swift.o

cd ../../

xcodebuild -create-xcframework \
 -library "./Build/Release-iphoneos/libCoreSwift.a" \
 -library "./Build/Release-iphoneos/libCoreSwift.a" \
 -output "./CoreSwift.xcframework"

rm -rf ./Build