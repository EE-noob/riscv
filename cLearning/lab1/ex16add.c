#include <stdio.h>
#include <string.h>

struct Person {
    char name[50];
    int age;
    int height;
    int weight;
};

struct Person Person_create( char *name, int age, int height, int weight)
{
    struct Person who;
    strcpy(who.name, name);
    who.age = age;
    who.height = height;
    who.weight = weight;
    return who;
}

void Person_print(struct Person who)
{
    printf("Name: %s\n", who.name);
    printf("\tAge: %d\n", who.age);
    printf("\tHeight: %d\n", who.height);
    printf("\tWeight: %d\n", who.weight);
}

int main(int argc, char *argv[])
{
    // make two people structures
    struct Person joe=Person_create("Joe Alex", 32, 64, 140);
    struct Person frank= Person_create("Frank Blank", 20, 72, 180);

    
   

    // print them out
    printf("Joe:\n");
    Person_print(joe);

    printf("Frank:\n");
    Person_print(frank);

    // make everyone age 20 years and print them again
    joe.age += 20;
    joe.height -= 2;
    joe.weight += 40;

    frank.age += 20;
    frank.weight += 20;

    printf("Joe (after 20 years):\n");
    Person_print(joe);

    printf("Frank (after 20 years):\n");
    Person_print(frank);

    return 0;
}
