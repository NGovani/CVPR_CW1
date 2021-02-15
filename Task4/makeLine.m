function [x_horizon, y_horizon] = makeLine(x, y, x_bounds)

m =  (x(1) - x(2)) / (y(1) - y(2))
x_horizon = [x_bounds(1); x_bounds(2)]

end

