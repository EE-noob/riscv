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

  #2>&1 是一种用于重定向标准错误流的方法。在 Bash 中，数字 2 表示标准错误流（stderr），数字 1 表示标准输出流（stdout）。当你使用 command > output.log 2>&1 这样的命令时，它的作用是将标准输出和标准错误流都重定向到同一个文件中。

# $command_to_run > "$output_file" 2>&1 这行命令将 $command_to_run 的标准输出和标准错误流都重定向到 $output_file 文件中。在某些情况下，如果你删除了 2>&1 这部分，可能不会立即看到明显的输出变化，因为输出可能本来就没有标准错误信息。通常情况下，这种写法可以确保所有输出都被记录在同一个文件中，便于分析和查看。
  exit_status=$?
# "?"是一个特殊变量，用于存储上一个命令的退出状态码（返回值）。当一个命令执行完毕后，它会返回一个整数值，通常用于指示命令的执行状况。通常，0表示成功，非零值表示失败。在脚本中，可以通过检查? 的值来判断上一个命令是否执行成功。
  if [[ $exit_status -ne 0 ]]; then
    #echo "Command failed"
    break
  fi
done

echo "Command output and error log:"
cat "$output_file"
echo -e "\nTotal run count: $count"
