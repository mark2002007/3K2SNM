clear; close; clc;
#
f = @(x,y,z) 5*y + 3*z;
g = @(x,y,z) -3*y - z;
y_acc = @(x) 3*(1 + 4*x)*exp(2*x);
z_acc = @(x) (1 - 12*x)*exp(2*x);
a = 0;
b = 0.1;
n = 1000;
y_0 = 3;
z_0 = 1;
[y_res, z_res] = EulerForSys(f, g, a, b, n, y_0, z_0)
#
y_err = abs(y_res - y_acc(b))
z_err = abs(z_res - z_acc(b))