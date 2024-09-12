#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>

int main() {
    char a[3]="ABC";
    char b[]="abc";
    char* c="myname";
    char d[]="amy";
    char dest_a[4];
    char dest_b[4];
    char dest_c[7];
    char dest_d[4];
    strcpy(dest_a,a);
    puts(a);
    puts(b);
    puts(c);
    puts(d);
    puts(dest_a);
 printf("a_address:%p\n",a);
 printf("b_address:%p\n",b);
 printf("c_address:%p\n",c);
 printf("d_address:%p\n",d);

    
    return 0;
}
