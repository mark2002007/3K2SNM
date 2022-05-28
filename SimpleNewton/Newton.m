function xs = Newton(f, x_1, max_iter)
  f_d = diff(f)
  xs = []
  for k = 1:max_iter
    x_1 = x_1 - f(x_1)/f_d(x_1);
    xs = [xs x_1];
  endfor
endfunction

