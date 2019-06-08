#!/bin/bash
set -e

copyNative() {
    local quantum=$1
    local target=$2

    cp $quantum/libMagick.Native-$quantum-x64.dll.so $target/Release$quantum/x64/Magick.Native-$quantum-x64.dll.so
}

copyNative "Q8" $1
copyNative "Q16" $1
copyNative "Q16-HDRI" $1
