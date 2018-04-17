% Zachary Linkletter
% ECE 498 HW 7
% 4/2/18

clear
clc

% Question 1
funct = @(x) .005*x - sin(x);
bounds=linspace(-5,5,101);
for i=1:100
        % Look for the zeros in the function's current window.
        x(i)=fzero(funct, bounds(i));
end
Q1 = x(diff(x)>1e-12)
% Question 2

coef = [1, 2, 7, 8, 10, 0, 1];
Q2 = roots(coef)

% Question 3

%function F = hw7solve(x)

%F(1) = 3*x(1)*x(2) + x(2) - x(3) - 12;
%F(2) = x(1) + x(2) * x(1)^2 + x(3) - 12;
%F(3) = x(1) - x(2) - x(3) + 2;

fun = @hw7solve;
x0 = [0,0,0];
Q3 = fsolve(fun,x0)