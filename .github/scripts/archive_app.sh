#!/bin/bash

set -eo pipefail

xcodebuild -workspace helloword.xcworkspace \
            -scheme helloword \ iOS \
            -sdk iphoneos \
            -configuration AdHoc \
            -archivePath $PWD/build/helloword.xcarchive \
            clean archive | xcpretty
