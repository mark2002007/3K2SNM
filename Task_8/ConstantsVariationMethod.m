function [xs, ys] = ConstantsVariationMethod(f, p, q, a, b, n, aa_0, bb_0, cc_0, aa_1, bb_1, cc_1)
  Z = [];
  h = (b-a)/n
  for b_i = (xs = a:h:b)
    [T_1, Z_1] = RK_3C_Sys(@(x, T, Z) f(x) - p(x)*T + q(x)*Z, @(x, T, Z) T, a, b_i, n, 0, 0);
    [T_2, Z_2] = RK_3C_Sys(@(x, T, Z) q(x)*Z - p(x)*T       , @(x, T, Z) T, a, b_i, n, 1, 0);
    [T_3, Z_3] = RK_3C_Sys(@(x, T, Z) q(x)*Z - p(x)*T       , @(x, T, Z) T, a, b_i, n, 0, 1);
    Z(:, end+1) = [Z_1 Z_2 Z_3]';
  endfor
  
  A = [bb_0               , aa_0; ...
       aa_1*Z_2 + bb_1*T_2, aa_1*Z_3 + bb_1*T_3];
  b = [cc_0;...
       cc_1-aa_1*Z_1-bb_1*T_1];   
  c = linsolve(A,b);
 
  ys = Z(1,:) + c(1)*Z(2,:) + c(2)*Z(3,:);
endfunction