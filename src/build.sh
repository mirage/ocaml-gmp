#!/bin/bash

HOST=$1

tar -xf gmp-6.2.0.tar.xz
cd gmp-6.2.0

[[ $3 = "false" ]] && SHARED_LIBRARY_ARG="--disable-shared"

ac_cv_func_obstack_vprintf=no \
ac_cv_func_localeconv=no \
./configure --host=$1 CC=cc CFLAGS="$2 -Wl,--unresolved-symbols=ignore-in-object-files" $SHARED_LIBRARY_ARG

make -j8 CFLAGS="$2"

cp gmp.h ..
cp .libs/libgmp.a ..
[[ $3 = "true" ]] && cp .libs/libgmp.so ../dllgmp.so

