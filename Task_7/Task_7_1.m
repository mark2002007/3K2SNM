clear; close; #clc;
f = @(x, y) 1/2*(y/x + y^3/x^2);
y_acc = @(x) sqrt(x/(4 - log(x)));
a = 1;
b = 5;
n = 10;
h = (b-a)/n;
eps = 10^-10;
y_0 = y_acc(a);
#y_1 = y_acc(a + h);
#y_2 = y_acc(a + 2*h);
y_1 = RK_4A_Eq(f, a, a + h, n, y_0) 
y_2 = RK_4A_Eq(f, a, a + 2*h, n, y_0) 

res = FourStepAdams_Eq(f, a, b, n, eps, y_0, y_1, y_2);
err = abs(res - y_acc(b));
fprintf("###############\nres = %d\nerr = %d\n", res, err)
