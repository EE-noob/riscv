# 编写两个 bash 函数 marco 和 polo 执行下面的操作。 每当你执行 marco 时，当前的工作目录应当以某种形式保存，当执行 polo 时，无论现在处在什么目录下，都应当 cd 回到当时执行 marco 的目录。 为了方便 debug，你可以把代码写在单独的文件 marco.sh 中，并通过 source marco.sh 命令，（重新）加载函数。
#!/bin/bash

# 初始化 MARCO_DIR 数组
declare -a MARCO_DIR=()

# 定义 marco 函数
marco() {
    current_dir=$(pwd)
  # 获取当前目录路径

  # 将新地址插入到数组第0个位置
  MARCO_DIR=("$current_dir" "${MARCO_DIR[@]}")
  
   echo "Hello!!! This directory has been recorded in MARCO_DIR!"
}

# 定义 polo 函数
polo() {
  local index="$1"  # 声明本地变量 index 并将传入的参数赋值给它
  if [ -z "$index" ]; then  # 检查是否传入了参数
    index=0  # 如果没有传入参数，默认设置 index 为 0
  fi

  if [ $index -lt 0 ] || [ $index -ge ${#MARCO_DIR[@]} ]; then  # 检查传入的 index 是否有效
    echo "Error: Invalid index."
    return 1
  fi

  cd "${MARCO_DIR[$index]}" || { echo "Error: Failed to change directory."; return 1; }  # 切换到指定索引处的目录
}

# 定义 show_marco 函数，用于显示 MARCO_DIR 中存储的多个地址
show_marco() {
  if [ ${#MARCO_DIR[@]} -eq 0 ]; then  # 检查 MARCO_DIR 是否为空
    echo "MARCO_DIR is empty."
  else
    for i in "${!MARCO_DIR[@]}"; do  # 遍历 MARCO_DIR 数组
      echo "[$i] ${MARCO_DIR[$i]}"  # 显示索引和对应的目录路径
    done
  fi
}

# 定义 clr_marco 函数，用于清空 MARCO_DIR 数组
clr_marco() {
  MARCO_DIR=()
  echo "MARCO_DIR has been cleared."
}