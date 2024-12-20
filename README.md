# PlatHook

[![license](http://img.shields.io/badge/license-Apache2.0-brightgreen.svg?style=flat)](https://github.com/alibaba/atlas/blob/master/LICENSE)

PlatHook 是一个跨平台的Hook Framework，同时支持Android、IOS、Linux、MacOS。
PlatHook 支持**ARM/THUMB、ARM64、X86、X86_64 (AMD64)**，这几乎覆盖了目前所有主流的设备。

## 特性
#### Android
* **Xposed-Style** Method Hook
* 运行时修改类之间的继承关系
* 修改对象所属的类
* 绕过`Hidden API Policy`

#### Darwin/Linux Platforms
* Internal symbol resolver
* Native Hook

#### IOS的限制
IOS的InlineHook在非越狱设备上只限在debug编译模式下开启，
release编译模式下将无法正常工作。

为了解决这个问题，PlatHook 将提供`Binary Static Inline Hook`。

IOS下的`Binary Static Inline Hook`将在近期开源。

## 编译
我们已提前编译了Android & IOS的**二进制版本**，您可以在`prebuilt目录`找到它们。

PlatHook 使用了CMake来构建项目，所以你需要在你的系统上安装CMake。

#### Android
1. 如果需要使用`Java Hook`, 请把android文件夹的代码复制到你的项目。

2. 直接使用二进制，你只需要复制 `prebuilt/Android` 下你所需的abi到你的项目的src/main/jniLibs下。

3. 如果需要编译源码，请在build.gradle中指定CMakelists.txt：
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


