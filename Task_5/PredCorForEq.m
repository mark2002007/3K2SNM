function y_i = PredCorForEq(f, a, b, n, y_i)
  h = (b-a)/n;
  for ii = 1:n
    x_i = a + h*(ii-1);
    y_avg = y_i + h*f(x_i, y_i);
    y_i = y_i + h/2*( f(x_i, y_i) + f(x_i + h, y_avg) );
  endfor
endfunction