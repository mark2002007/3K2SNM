#clear; close; clc;
#
#f = @(x, y) 1/2*(y/x + y^3/x^2);
#y_acc = @(x) sqrt(x/(4 - log(x)));
#a = 1;
#b = 2;
#n = 1000;
#y_0 = y_acc(a);
f = @(x, y) 1/(2*x+y)
#y_acc = @(x) sqrt(x/(4 - log(x)));
a = 0; y_0 = 1;
b = 0.5;
n = 1;
#
res = PredCorForEq(f, a, b, n, y_0)
#err = abs(res - y_acc(b))