function [S_2 X Y] = AdaptiveSimpson(f, a, b, eps = 10^-4, hmin = 10^-3)
  aa = a; bb = bb_ = b; I = 0;
  X = a; Y = f(a);
  while(aa != bb)
    S_2 = 10; S_1 = 0;
    while abs(S_2 - S_1)/10 > eps*(bb - aa)/(b - a) && (bb - aa) > hmin
      bb = bb_;
      S_1 = Simpson(f, aa, bb, 2);
      [S_2 xs] = Simpson(f, aa, bb, 4);
      bb_ = (aa + bb)/2;
    endwhile
    I = I + S_2;
    aa = bb;
    bb = bb_ = b;
    X = [X xs(2:end)]; 
    Y = [Y f(xs(2:end))];
  endwhile
endfunction