#include <stdio.h>

void decode(int *xp, int *yp, int *zp){
    int x = *xp;
    int y = *yp;
    int z = *zp;

    *xp = z;
    *yp = x;
    *zp = y;
}

void main(){
    int a = 3;
    int b = 5;
    int c = 9;

    decode(&a, &b, &c);

    printf("a = %d, b = %d, c = %d\n", a, b, c);

}