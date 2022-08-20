#!/bin/bash

# Lint
clang-format -i main.c

# Cleanup
rm -f ./nchrs
rm ../site/*.html
rm ../site/links/*

cp -R links/* ../site/links/

# Linux(debug)
#cc -std=c89 -DDEBUG -Wall -Wno-unknown-pragmas -Wpedantic -Wshadow -Wuninitialized -Wextra -Werror=implicit-int -Werror=incompatible-pointer-types -Werror=int-conversion -Wvla -g -Og -O0 -fsanitize=address -fsanitize=undefined main.c -o nchrs

# Linux(fast)
cc main.c -Os -DNDEBUG -g0 -Wall -Wno-comment -Wno-unknown-pragmas -o nchrs

# RPi
# tcc -Wall main.c -o oscean

# Plan9
# pcc main.c -o oscean

# Valgrind
# gcc -std=c89 -DDEBUG -Wall -Wpedantic -Wshadow -Wuninitialized -Wextra -Werror=implicit-int -Werror=incompatible-pointer-types -Werror=int-conversion -Wvla -g -Og main.c -o oscean
# valgrind ./oscean

# Build Size
# echo "$(du -b ./nchrs | cut -f1) bytes written"
 echo "$(du ./nchrs | cut -f1) bytes written"

# Run
./nchrs

# Cleanup
rm -f ./nchrs
