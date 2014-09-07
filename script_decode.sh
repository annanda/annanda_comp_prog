#!/bin/bash

#### Decode 1

gcc -O0 -m32 -E decode1.c -o d1_nao_otimizado.i
gcc -O0 -m32 -S d1_nao_otimizado.i -o d1_nao_otimizado.s


gcc -O1 -m32 -E decode1.c -o d1_otimizado01.i
gcc -O1 -m32 -S d1_otimizado01.i -o d1_otimizado01.s



gcc -O2 -m32 -E decode1.c -o d1_otimizado02.i
gcc -O2 -m32 -S d1_otimizado02.i -o d1_otimizado02.s

gcc -O3 -m32 -E decode1.c -o d1_otimizado03.i
gcc -O3 -m32 -S d1_otimizado03.i -o d1_otimizado03.s

## Decode 2

gcc -O0 -m32 -E decode2.c -o d2_nao_otimizado.i
gcc -O0 -m32 -S d2_nao_otimizado.i -o d2_nao_otimizado.s


gcc -O1 -m32 -E decode2.c -o d2_otimizado01.i
gcc -O1 -m32 -S d2_otimizado01.i -o d2_otimizado01.s



gcc -O2 -m32 -E decode2.c -o d2_otimizado02.i
gcc -O2 -m32 -S d2_otimizado02.i -o d2_otimizado02.s

gcc -O3 -m32 -E decode2.c -o d2_otimizado03.i
gcc -O3 -m32 -S d2_otimizado03.i -o d2_otimizado03.s