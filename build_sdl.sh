#!/bin/bash
. ./environment.sh
pushd SDL/Xcode-iPhoneOS/SDL
xcodebuild -project SDLiPhoneOS.xcodeproj -target libSDL -configuration Release -sdk iphoneos5.0
popd

cp SDL/Xcode-iPhoneOS/SDL/build/Release-iPhoneOS/libSDL.a $BUILDROOT/lib
cp -a SDL/include $BUILDROOT/include/SDL 
