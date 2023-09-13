#include <stdio.h>
#include <ctype.h>
#include <string.h>
// forward declarations
int can_print_it(char ch);
void print_letters(char arg[],int length);

void print_arguments(int argc, char *argv[])
{
    int i = 0;
    int length;
    for(i = 0; i < argc; i++) {
        length=strlen(argv[i]);
        printf("argv[%d] length==%d\t",i,length);
        print_letters(argv[i],length);
    }
}

void print_letters(char arg[],int length)
{
    int i = 0;
    
    for(i = 0; i<=length; i++) {
        char ch = arg[i];

        if(isalpha(ch) || isblank(ch)) {
            printf("'%c' == %d ", ch, ch);
        }
    }

    printf("\n");
}


int main(int argc, char *argv[])
{
    print_arguments(argc, argv);
    int a;char b=' ';
    int x;char y='n';
    a=isblank(b);
    x=isblank(y);
    printf(" a=%d b=111%c111 ", a, b);
    printf(" x=%d y=111%c111 ", x, y);
    return 0;
}