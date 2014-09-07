#!/bin/bash

rm nao_otimizado.*
rm otimizado01.*
rm otimizado02.*
rm otimizado03.*

gcc -O0 -m32 -E exemplo.c -o nao_otimizado.i
gcc -O0 -m32 -S nao_otimizado.i -o nao_otimizado.s


gcc -O1 -m32 -E exemplo.c -o otimizado01.i
gcc -O1 -m32 -S otimizado01.i -o otimizado01.s



gcc -O2 -m32 -E exemplo.c -o otimizado02.i
gcc -O2 -m32 -S otimizado02.i -o otimizado02.s

gcc -O3 -m32 -E exemplo.c -o otimizado03.i
gcc -O3 -m32 -S otimizado03.i -o otimizado03.s