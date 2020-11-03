#!/bin/bash

HOST=$1

tar -xf gmp-6.2.0.tar.xz
cd gmp-6.2.0

ac_cv_func_obstack_vprintf=no \
ac_cv_func_localeconv=no \
./configure --host=$1 CC=cc CFLAGS="$2 -Wl,--unresolved-symbols=ignore-in-object-files"

make -j8 CFLAGS="$2"

cp gmp.h ..
cp .libs/libgmp.a ..

