#!/bin/sh

# ada, c, c++, d, fortran, go, jit, lto, objc, obj-c++
# gcc gdb default-manifest manifest-upstream-deps
source ./common.sh && make $* \
  WINPTHREADS_SRC=/crossdev/src/mingw-w64-v8-git/mingw-w64-libraries/winpthreads \
  EDITION=tdm32 \
  PKGVERSION=tdm-1 \
  STAGING_PREFIX=/mingw32tdm \
  BUILD_TYPE=native \
  BUILD=mingw32 \
  BIARCH=0 \
  LANGS=ada,c,c++,fortran,jit,lto,objc,obj-c++ \
  EXCEPTIONS=sjlj \
  THREAD_TYPE=posix \
  SUPPORT_SHARED=1 \
  RUNTIME_SHARED=1 \
  MAKE_PACKAGES="gcc default-manifest manifest-upstream-deps" \
  BUILD_TOOLCHAIN=/crossdev/buildfrom-tdm32 \
  HOST_TOOLCHAIN=/crossdev/buildfrom-tdm32 \
  PYTHON_DIR=/crossdev/src/Python394-32 \
  PYTHON_DLL=python39.dll \
  GDB_SUFFIX=32
