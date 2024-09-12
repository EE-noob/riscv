find ./ -type f -name "*.html" -print0 | xargs -0 zip  output.zip
# #在Linux或Unix系统中，-print0 是find命令的一个选项，
# 用于在find命令的结果中使用null字符（ASCII值为0）来分隔文件名，
# 而不是使用换行符。这种方式可以确保在处理文件名中包含空格或特
# 殊字符的情况下，命令的输出能够被正确解释。通常与-print0一起使用
# 的命令是xargs命令的-0选项，以便正确处理通过find命令找到的文件名。