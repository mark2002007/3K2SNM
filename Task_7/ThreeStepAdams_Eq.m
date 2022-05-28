function y_2 = ThreeStepAdams_Eq(f, a, b, n, eps, y_0, y_1)
  h = (b-a)/n;
  x_1 = a;
  x_2 = a + h;
  for ii = 2:n
    ii; #Output iteration
    #X_i
    x_0 = x_1;
    x_1 = x_2;
    x_2 = a + ii*h;
    if ii > 2
      y_0 = y_1;
      y_1 = y_2;
    endif
    #Compute y_2
    y_2_s = y_1 + h/2*(3*f(x_1, y_1) - f(x_0, y_0));
    while true
      y_2_t = y_2_s;
      y_2_s = y_1 + h/12*(5*f(x_2, y_2_s) + 8*f(x_1, y_1) - f(x_0, y_0));
      if abs(y_2_t - y_2_s) < eps
        y_2 = y_2_s;
        break;
      endif
    endwhile
  endfor
endfunction