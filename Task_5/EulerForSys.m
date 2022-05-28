function [y_i, z_i] = EulerForSys(f, g, a, b, n, y_i, z_i)
  h = (b-a)/n;
  for ii = 1:n
    x_i = a + h*(ii-1);
    y_i = y_i + h*f(x_i, y_i, z_i);
    z_i = z_i + h*g(x_i, y_i, z_i);
  endfor
endfunction