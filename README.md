# PlatHook

[![license](http://img.shields.io/badge/license-Apache2.0-brightgreen.svg?style=flat)](https://github.com/alibaba/atlas/blob/master/LICENSE)

PlatHook 是一个跨平台的Hook Framework，同时支持Android、IOS、Linux、MacOS。

PlatHook 支持**ARM/THUMB、ARM64、X86、X86_64 (AMD64)**，这几乎覆盖了目前所有主流的设备。


## 编译
PlatHook 使用了CMake来构建项目，所以你需要在你的系统上安装CMake。

#### Android
1. 如果需要使用`Java Hook`, 请把android文件夹的代码复制到你的项目。

2. 如果需要编译源码，请在build.gradle中指定CMakelists.txt：
```
externalNativeBuild {
  cmake {
      path "your_plathook_path/lib/CMakeLists.txt"
  }
}
```

#### IOS
```
cd toolchain

cmake .. \
-DCMAKE_TOOLCHAIN_FILE=ios.toolchain.cmake \
-DIOS_PLATFORM=OS64 \
-DPLATFORM=IOS \
-DIOS_ARCH=arm64 \
-DENABLE_ARC=0 \
-DENABLE_BITCODE=0 \
-DENABLE_VISIBILITY=0 \
-DIOS_DEPLOYMENT_TARGET=9.3 \
-DSHARED=ON \
-DCMAKE_BUILD_TYPE=Release

make -j4
```

#### Ohter platforms
```
cmake .
make -j8
```


