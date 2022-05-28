function [x_1, k] = AlphaNewton(f, x_1, eps, max_iter = 50)
  f_d = diff(f)
  for k = 1:max_iter
    aa = 1;
    x_0 = x_1;
    x_1 = x_0 - aa*double(f(x_0))/double(f_d(x_0));
    while  abs(f(x_1)) > abs(f(x_0))
      aa = aa / 2;
      x_1 = x_0 - aa*double(f(x_0))/double(f_d(x_0));
      disp(aa)
    endwhile
    if abs(x_1 - x_0) < eps
      break;
    endif
  endfor
endfunction