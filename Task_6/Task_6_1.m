#clear; close; clc;

f = @(x, y) 1/2*(y/x + y^3/x^2);
y_acc = @(x) sqrt(x/(4 - log(x)));
a = 1;
b = 2;
n = 1000;
y_0 = y_acc(a);

res = RK_4A_Eq(f, a, b, n, y_0)
err = abs(res - y_acc(b))