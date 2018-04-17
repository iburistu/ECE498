function dy = ode(t,y)
dy = zeros(3,1);
dy(1) = 2*y(1) + y(2) + 5*y(3) + exp(-2*t);
dy(2) = -3*y(1) - 2*y(2) - 8*y(3) + 2*exp(-2*t) - cos(3*t);
dy(3) = 3*y(1) + 3*y(2) + 2*y(3) + cos(3*t);
end