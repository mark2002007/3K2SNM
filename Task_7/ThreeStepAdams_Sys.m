function [y_2, z_2] = ThreeStepAdams_Sys(f, g, a, b, n, eps, y_0, y_1, z_0, z_1)
  h = (b-a)/n;
  x_1 = a;
  x_2 = a + h;
  for ii = 2:n
    ii; #Output iteration
    #x_i
    x_0 = x_1;
    x_1 = x_2;
    x_2 = a + ii*h;
    #Shift y_i
    if ii > 2
      y_0 = y_1;
      y_1 = y_2;
      z_0 = z_1;
      z_1 = z_2;
    endif
    #Compute y_2
    y_2_s = y_1 + h/2*(3*f(x_1, y_1, z_1) - f(x_0, y_0, z_0));
    z_2_s = z_1 + h/2*(3*g(x_1, y_1, z_1) - g(x_0, y_0, z_0));
    while true
      y_2_t = y_2_s;
      z_2_t = z_2_s;
      y_2_s = y_1 + h/12*(5*f(x_2, y_2_s, z_2_s) + 8*f(x_1, y_1, z_1) - f(x_0, y_0, z_0));
      z_2_s = z_1 + h/12*(5*g(x_2, y_2_s, z_2_s) + 8*g(x_1, y_1, z_1) - g(x_0, y_0, z_0));
      if abs(y_2_t - y_2_s) < eps && abs(z_2_t - z_2_s) < eps
        y_2 = y_2_s;
        z_2 = z_2_s;
        break;
      endif
    endwhile
  endfor
endfunction