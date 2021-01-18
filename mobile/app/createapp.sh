#!/bin/sh
PLATFORM=$1
if [ -x ${PLATFORM} ];
then
	echo PLATFORM not defined
	exit 1
fi
cordova create wallet org.nxt.mobile.wallet "NXT Mobile Wallet" --template ../../html/ionic.config.json
cd wallet
rm -rf icons
rm -rf plugins
cp -a /Users/adistroianu/eaglecoin/mobile/icons icons
cp -a /Users/adistroianu/eaglecoin/mobile/plugins plugins
cordova platform add ${PLATFORM}
rm -rf platforms
cp -a /Users/adistroianu/eaglecoin/mobile/platforms platforms
cd ..
