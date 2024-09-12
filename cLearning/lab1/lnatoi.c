#include <stdio.h>
#include <stdlib.h>

int main() {
    char str[] = "22hhh123"; // 定义一个包含数字字符的字符串
    int num = atoi(str); // 使用atoi将字符串转换为整数

    printf("Converted number: %d\n", num);

    return 0;
}

