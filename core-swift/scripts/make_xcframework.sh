[ -d "./CoreSwift.xcframework" ] && rm -rf ./CoreSwift.xcframework

cd ./CoreSwift

xcodebuild archive \
-scheme CoreSwift \
-configuration Release \
-destination 'generic/platform=iOS' \
-archivePath './build/CoreSwift.framework-iphoneos.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

xcodebuild archive \
-scheme CoreSwift \
-configuration Release \
-destination 'generic/platform=iOS Simulator' \
-archivePath './build/CoreSwift.framework-iphonesimulator.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

xcodebuild -create-xcframework \
-framework './build/CoreSwift.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/CoreSwift.framework' \
-framework './build/CoreSwift.framework-iphoneos.xcarchive/Products/Library/Frameworks/CoreSwift.framework' \
-output '../CoreSwift.xcframework'

rm -rf ./build
