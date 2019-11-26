
lib = require 'lab_11_lib' 
mod = require 'lab-11-mod' 

a = 2
b = 4
c = 0

print(a,b)

a, b = lib.lua_swap(a, b)

print(a,b)

c = lib.lua_sum(a, b)

print(c)

a, b = mod.lua_swap(a, b)

print(a, b)

c = mod.lua_sum(a, b)

print(c)


