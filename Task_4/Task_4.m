clear;close;clc;
pkg load symbolic;
#SETUP
F_1 = @(x, y) sin(x + y) - 1.3 .*x - 0.1;
F_2 = @(x, y) x.^2 + y.^2 - 1;
x_0 = [2; 1];
x_1 = [2.5; 1.5];
#eps = 10^-5
#max_iter = 1000
#COMPUTE/OUTPUT
[x_res, k] = Compute(F_1, F_2, x_0, x_1)
F_res = F(F_1, F_2, x_res)
#PLOT
ezplot(F_1); hold on; axis equal; grid on;
ezplot(F_2); 
scatter(x_res(1), x_res(2), [], [62,150,81]/256)