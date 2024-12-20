## 规范说明
```
Added － 这里记录新增加了哪些功能／接口
Changed － 功能／接口变更
Deprecated － 不建议使用的功能／接口，将来会删掉
Removed － 之前不建议使用的功能／接口，这次真的删掉了
Fixed － 这里记录解决了哪些问题
Others － 这里记录性能优化和安全性增强等改进。
```


## 2024-12-20

**Added**
- 新增build_helper.sh，简化编译步骤

**Changed**
- 修改c++源码，使其编译器兼容性更好
- 将/java目录迁移到/android/src/main/java
- 将/toolchain/ios.toolchain.cmake重命名为ios-toolchain.cmake

**Removed**
- 移除LOGO文件

**Others**
- .gitignore 新增忽略目录build
- 更改LICENSE为GPL-3.0


## 2024-12-18

**Changed**
- built目录改名为prebuilt
- 修改java层代码，将Xposed相关代码移动到de.robv.android.xposed目录下
- test目录由whale/test移动到/test
