% Zachary Linkletter
% ECE 498 HW 8
% 4/9/18

clear
clc

Q1 = dsolve('Dy = x^2/y','x')

Q2 = dsolve('Dy + y^2 * sin(x) = 0', 'x')

Q3 = dsolve('x * Dy = sqrt(1 - y^2)','x')

f = @(x,y) (-x*y)/sqrt(2 - y^2);

[x,y] = ode45(f, [0 5], 1);
figure(1);
plot(x,y)
grid on;
title('Q4');

%function dy = ode(t,y)
%dy = zeros(3,1);
%dy(1) = 2*y(1) + y(2) + 5*y(3) + exp(-2*t);
%dy(2) = -3*y(1) - 2*y(2) - 8*y(3) + 2*exp(-2*t) - cos(3*t);
%dy(3) = 3*y(1) + 3*y(2) + 2*y(3) + cos(3*t);
%end


[x1,y1] = ode23('ode',[0 pi/2], [1 -1 1])

figure(2);
plot(x1,y1)
grid on;
title('Q5');