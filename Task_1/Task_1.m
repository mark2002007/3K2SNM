close; clear; clc; format long
a = 1.4; b = 150; eps = 10^-5;
f = @(x) 1 ./sqrt(2 .*x.^2 + 0.7);
[Q, err, m] = GaussLegendreN7WithError(f, a, b, eps)