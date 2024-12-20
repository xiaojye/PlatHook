#!/bin/bash

# 定义支持的架构列表
declare -a ARCHITECTURES=("x86_64-linux")

# 函数：显示帮助信息
show_help() {
    echo "Usage: $0 [OPTION]... [ARCH]..."
    echo "Build the project for specified or all architectures."
    echo ""
    echo "Options:"
    echo "  -h, --help         Display this help message and exit."
    echo "Architectures:"
    echo "  ${ARCHITECTURES[*]}"
}

# 函数：构建指定架构
build_architecture() {
    local ARCH=$1
    
    echo "Building for architecture: $ARCH"

    mkdir -p build/$ARCH
    cd build/$ARCH || { echo "Failed to change directory to build/$ARCH"; exit 1; }
    
    # 使用 CMake 配置和构建项目
    cmake -DCMAKE_TOOLCHAIN_FILE=../../toolchain/$ARCH-toolchain.cmake ../../ || { echo "CMake configuration failed"; exit 1; }
    cmake --build . --config Release || { echo "Build failed"; exit 1; }
    
    cd ../../ || exit
}

# 函数：构建所有架构
build_all() {
    for ARCH in "${ARCHITECTURES[@]}"; do
        build_architecture "$ARCH"
    done
}

# 解析命令行参数
while [[ $# -gt 0 ]]; do
    case $1 in
        -h|--help)
            show_help
            exit 0
            ;;
        *)
            # 检查输入的架构是否支持
            if [[ " ${ARCHITECTURES[*]} " =~ " $1 " ]]; then
                build_architecture "$1"
            else
                echo "Error: Unsupported architecture '$1'. Use -h or --help for usage."
                exit 1
            fi
            ;;
    esac
    shift
done

# 如果没有参数，则构建所有架构
if [ $# -eq 0 ]; then
    build_all
fi