# 设置系统名称为 Linux
set(CMAKE_SYSTEM_NAME Linux)

# 设置处理器架构为 x86_64
set(CMAKE_SYSTEM_PROCESSOR x86_64)

# 指定交叉编译器
set(CMAKE_C_COMPILER /usr/bin/x86_64-linux-gnu-gcc)  # C 编译器
set(CMAKE_CXX_COMPILER /usr/bin/x86_64-linux-gnu-g++)  # C++ 编译器

# 指定查找目标环境的路径（根据需要调整路径）
set(CMAKE_FIND_ROOT_PATH /usr/x86_64-linux-gnu)

# 调整 FIND_XXX() 命令的默认行为：
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)  # 不在根路径中查找程序
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)   # 仅在根路径中查找库
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)   # 仅在根路径中查找头文件