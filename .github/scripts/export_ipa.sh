#!/bin/bash

set -eo pipefail

xcodebuild -archivePath $PWD/build/helloword.xcarchive \
            -exportOptionsPlist helloword-iOS/helloword\ iOS/exportOptions.plist \
            -exportPath $PWD/build \
            -allowProvisioningUpdates \
            -exportArchive | xcpretty
