#clear; close; clc;

f = @(x,y,z) 5*y + 3*z;
g = @(x,y,z) -3*y - z;
y_acc = @(x) 3*(1 + 4*x)*exp(2*x);
z_acc = @(x) (1 - 12*x)*exp(2*x);
a = 0;
b = 0.1;
n = 1000;
h = (b-a)/n;
y_0 = y_acc(a);
z_0 = z_acc(a);
#y_1 = y_acc(a + h);
#z_1 = z_acc(a + h);
[y_1, z_1] = RK_3C_Sys(f, g, a, a + h, n, y_0, z_0)

[y_res, z_res] = ThreeStepAdams_Sys(f, g, a, b, n, eps, y_0, y_1, z_0, z_1)
y_err = abs(y_res - y_acc(b))
z_err = abs(z_res - z_acc(b))