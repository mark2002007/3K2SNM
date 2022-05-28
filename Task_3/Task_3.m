clear; close; clc; warning('off', 'all');
pkg load symbolic;
#INPUT
syms f(x);
f(x) = x^3 - x - 1; # x^3-2*sin(x)-1; #x^2 # 2*(x-3)*log(x) - 1 #
ezplot(f); hold on; grid on;
#solve(f*diff(f,2) > 0)
x_1 = input('x_1 : ');
eps = 10^-5;
#COMPUTE
[res, k] = AlphaNewton2(f, x_1, eps);
printf("x = %d; f(x) = %d; k = %d \n", res, double(f(res)), k);
#PLOT
scatter(double(res), double(f(res)))