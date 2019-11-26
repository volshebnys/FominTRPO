rm lab_11_lib.so
gcc -shared -s -O3 -Wall -fPIC lab-11.c -o lab_11_lib.so -llua5.3 -I/usr/include/lua5.3
