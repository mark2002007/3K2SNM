function [x_1, k] = Compute(F_1, F_2, x_0, x_1, eps = 10^-5, max_iter = 1000)
  for k = 1:max_iter
    a = A(F_1, F_2, x_1, x_0);
    f = -F(F_1, F_2, x_1);
    delta = linsolve(a, f);
    x_1 = x_1 + delta;
    x_0 = x_1 - delta;
    if norm(F(F_1, F_2, x_1)) < eps 
      break; 
    endif
  endfor
endfunction