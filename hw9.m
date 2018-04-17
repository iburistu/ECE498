% Zachary Linkletter
% ECE 498 HW 9
% 4/16/18

clear
clc

% Question 1

profit = @(x) 143*x(1) + 69*x(2);




% Question 3
x0 = [0,0,0];
fun = @(x) (x(1)^2 + x(2)^2)^2 - x(1)^2 - x(2) + x(3)^2;
[Q3,y] = fminunc(fun, x0);

Q3

% Question 4
A = [1, -1];
B = [2];
x0 = [0,0];

fun2 = @(x) 2 * x(1)^2 + 20 * x(2)^2 + 6 * x(1) * x(2) + 5 * x(1);

[Q4, y] = fmincon(fun2, x0, A, B);

Q4