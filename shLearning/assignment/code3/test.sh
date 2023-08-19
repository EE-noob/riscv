#!/bin/bash

command_to_run="./dut.sh"  # 将 "your_command" 替换为要运行的实际命令

count=0
output_file="output.log"

while true; do
  count=$((count + 1))

  #echo "Running command: $command_to_run (Run count: $count)"
  
  # 运行命令，并将标准输出和标准错误流重定向到文件
  $command_to_run > "$output_file" 2>&1 
  #> 是重定向操作符，用于将命令的标准输出写入到文件中。
  #在这里，$command_to_run 的标准输出会被重定向到 $output_file 文件中。
  #2>&1 是将标准错误流（文件描述符 2）重定向到标准输出流（文件描述符 1）的方式。
  #这样，标准错误流的内容会和标准输出流的内容一起写入到文件中。

  
  exit_status=$?
  
  if [[ $exit_status -ne 0 ]]; then
    #echo "Command failed"
    break
  fi
done

echo "Command output and error log:"
cat "$output_file"
echo -e "\nTotal run count: $count"
