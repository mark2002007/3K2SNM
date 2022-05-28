function [y_i, z_i] = RK_3C_Sys(f, g, a, b, n, y_i, z_i)
  h = (b-a)/n;
  for ii = 1:n
    x_i = a + h*(ii-1);
    k_1 = h*f(x_i,y_i,z_i);
    l_1 = h*g(x_i,y_i,z_i);
    k_2 = h*f(x_i + h/2, y_i + k_1/2, z_i + l_1/2);
    l_2 = h*g(x_i + h/2, y_i + k_1/2, z_i + l_1/2);
    k_3 = h*f(x_i + 3*h/4, y_i + 3*k_2/4, z_i + 3*l_2/4);
    l_3 = h*g(x_i + 3*h/4, y_i + 3*k_2/4, z_i + 3*l_2/4);
    y_i = y_i + 1/9*(2*k_1 + 3*k_2 + 4*k_3);
    z_i = z_i + 1/9*(2*l_1 + 3*l_2 + 4*l_3);
  endfor
endfunction