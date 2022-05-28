close; clear; warning('off', 'all');
pkg load symbolic; syms sx;
#SETUP
p = @(x) 2*x; 
q = @(x) 1;
f = @(x) 2*cos(x)*(x^2+1);
y_acc = @(x) x.*sin(x);
a = 0;
b = 0.5;
n = 100;
[aa_0, bb_0, cc_0, aa_1, bb_1, cc_1] = deal(1, 0, 0, 1, 0, 0.5*sin(0.5));
#COMPUTE
[xs, ys] = ConstantsVariationMethod(f, p, q, a, b, n, aa_0, bb_0, cc_0, aa_1, bb_1, cc_1);
#OUTPUT
err = max(abs(y_acc(xs) - ys))
plot(xs, ys, '--o'); hold on;
fplot(y_acc, [a, b]); 