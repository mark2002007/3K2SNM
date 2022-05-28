function y_i = RK_4A_Eq(f, a, b, n, y_i)
  h = (b-a)/n;
  for ii = 1:n
    x_i = a + h*(ii-1);
    k_1 = h*f(x_i, y_i);
    k_2 = h*f(x_i + h/2, y_i + k_1/2);
    k_3 = h*f(x_i + h/2, y_i + k_2/2);
    k_4 = h*f(x_i + h, y_i + k_3);
    y_i = y_i + 1/6*(k_1 + 2*k_2 + 2*k_3 + k_4);
  endfor
endfunction