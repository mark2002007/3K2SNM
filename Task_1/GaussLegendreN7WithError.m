function [Q_2, err, m] = GaussLegendreN7WithError(f, a, b, eps, m = 1)
  Q_1 = GaussLegendreN7(f, a, b, m);
  m = m + 1;
  Q_2 = GaussLegendreN7(f, a, b, m);
  while (err = abs(Q_1 - Q_2)) > eps
    Q_1 = Q_2;
    m = m + 1;
    Q_2 = GaussLegendreN7(f, a, b, m);
  endwhile
endfunction