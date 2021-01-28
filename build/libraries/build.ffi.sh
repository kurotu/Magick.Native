#!/bin/bash
set -e

cd ffi
autoreconf -fiv
$CONFIGURE --disable-static --disable-docs CFLAGS="$FLAGS"
$MAKE install
