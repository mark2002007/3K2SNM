function res = A(F_1, F_2, x, y)
  F_11 = (F_1(x(1), y(2)) - F_1(y(1), y(2)))/(x(1) - y(1));
  F_12 = (F_1(x(1), x(2)) - F_1(x(1), y(2)))/(x(2) - y(2));
  F_21 = (F_2(x(1), y(2)) - F_2(y(1), y(2)))/(x(1) - y(1));
  F_22 = (F_2(x(1), x(2)) - F_2(x(1), y(2)))/(x(2) - y(2));
  res = [F_11 F_12; F_21 F_22];
endfunction