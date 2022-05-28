clear; close; clc;
f = @(x) atan(10 * x)
a = -3;
b = 4;
[res X Y] = AdaptiveSimpson(f, a, b, 10^-6);
fplot(f, [a b]); hold on; scatter(X, Y);