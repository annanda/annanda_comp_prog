#include <stdio.h>

int troca(int *xp, int y){
    int x = *xp;
    *xp = y;
    return x;
}

void main (){
    int a = 4;
    int b = troca(&a,3);
    printf("a = %d, b = %d\n", a, b);
}