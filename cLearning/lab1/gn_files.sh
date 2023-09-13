#!/bin/bash

start=$1  # 开始参数
end=$2    # 结束参数

# 检查参数是否为空
if [ -z "$start" ] || [ -z "$end" ]; then
  echo "请提供开始和结束参数"
  exit 1
fi

# 确保开始参数小于等于结束参数
if [ "$start" -gt "$end" ]; then
  echo "开始参数必须小于等于结束参数"
  exit 1
fi

# 生成文件
for ((i=start; i<=end; i++)); do
  filename="ex${i}.c"
  touch "$filename"
  echo "已生成文件: $filename"
done

