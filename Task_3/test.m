v = -5:0.1:5;
[x,y] = meshgrid(v);  % create a grid
ineq = x + y >= 1;    % some inequality
f = double(ineq);
surf(x,y,f);
view(0,90)            % rotate surface plot to top view