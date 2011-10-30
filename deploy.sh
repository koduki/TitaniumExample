#!/bin/zsh

MOBILE_SDK=${HOME}/.titanium/mobilesdk/linux/1.7.3
ANDROID_SDK=/opt/android-sdk-linux_x86/android-sdk_r15-linux_x86
PYTHON_BIN=/usr/bin/python2

guid=`grep guid tiapp.xml|sed "s/<guid>//g"|sed "s/<\/guid>//g"`
name=`grep name tiapp.xml|sed "s/.*<name>//g"|sed "s/<\/name>.*//g"`
id=`grep "<id>" tiapp.xml|sed "s/.*<id>//g"|sed "s/<\/id>.*//g"`

$PYTHON_BIN $MOBILE_SDK/android/builder.py simulator $name $ANDROID_SDK ./ $id HVGA
