flutter packages get
cd ios
pod install

xcodebuild \
CODE_SIGNING_ALLOWED=NO \
-workspace Runner.xcworkspace \
-configuration "Release" \
-scheme Runner \
-archivePath ./archive \
archive

open ./archive.xcarchive/Products/Applications/Runner.app/Frameworks
