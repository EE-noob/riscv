#include <stdio.h>
#include <errno.h>

int main() {
    FILE* file = fopen("nonexistent_file.txt", "r");
    if (file == NULL) {
        printf("File opening failed. Error code: %d\n", errno);
        perror("here's mes!!!");
        return 1;
    }
    
    // 如果文件打开成功，继续进行其他操作...
    
    fclose(file);
    return 0;
}

