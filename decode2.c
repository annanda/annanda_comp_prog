#include <stdio.h>

void decode(int *xp, int *yp, int *zp){
    int x = *xp;

    *xp = *zp;
    *zp = *yp;
    *yp = x;
}

void main(){
    int a = 1;
    int b = 2;
    int c = 3;

    decode(&a, &b, &c);

    printf("a = %d, b = %d, c = %d\n", a, b, c);

}