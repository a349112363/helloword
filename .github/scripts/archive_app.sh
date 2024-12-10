#!/bin/bash

set -eo pipefail

xcodebuild -workspace helloword.xcworkspace \
            -scheme helloword \
            -sdk iphoneos \
            -configuration AdHoc \
            -archivePath $PWD/build/helloword.xcarchive \
            clean archive | xcpretty


    - name: Decode and install certificate
      run: |
        echo "${{ secrets.CERTIFICATE_PASSWORD }}" | base64 --decode > certificate.p12
        security import certificate.p12 -P "${{ secrets.CERTIFICATE }}" -A
        security list-keychains -s build.keychain
        security set-key-partition-list -S apple-tool:,apple: -s build.keychain

    - name: Decode provisioning profile
      run: |
        echo "${{ secrets.PROVISIONING_PROFILE }}" | base64 --decode > ProfilehellowordAdHot.mobileprovision



