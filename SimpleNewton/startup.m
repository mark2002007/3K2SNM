clear; close; clc; warning('off', 'all');
pkg load symbolic;
#INPUT
syms f(x);
f(x) = x^3 - 3*x^2 + 3; 
x_1 = 3;
max_iter = 2;
#COMPUTE
[res, k] = Newton(f, x_1, max_iter)