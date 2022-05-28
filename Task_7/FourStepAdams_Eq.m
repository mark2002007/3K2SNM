function y_3 = FourStepAdams_Eq(f, a, b, n, eps, y_0, y_1, y_2)
  h = (b-a)/n;
  x_1 = a;
  x_2 = a + h;
  x_3 = a + 2*h;
  for ii = 3:n
    ii; #Output iteration
    #x_i
    x_0 = x_1;
    x_1 = x_2;
    x_2 = x_3;
    x_3 = a + ii*h;
    #Shift y_i
    if ii > 3
      y_0 = y_1;
      y_1 = y_2;
      y_2 = y_3;
    endif
    #Compute y_3
    y_3_s = y_2 + h/12*(23*f(x_2, y_2) - 16*f(x_1, y_1) + 5*f(x_0, y_0));
    while true
      y_3_t = y_3_s;
      y_3_s = y_2 + h/24*(9*f(x_3, y_3_s) + 19*f(x_2, y_2) - 5*f(x_1, y_1) + f(x_0, y_0));
      if abs(y_3_t - y_3_s) < eps
        y_3 = y_3_s;
        break;
      endif
    endwhile
    #
  endfor
endfunction