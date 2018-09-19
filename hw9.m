% Zachary Linkletter
% ECE 498 HW 9
% 4/23/18

clear
clc

% Question 1
f = [143; 69];
A = [110 30
     120 210
     1 1];
b = [4000; 15000; 75];
lb = zeros(2,1);
[Q1,fval,exitflag,output,lambda] = linprog(-f,A,b,[],[],lb);
Q1

% Question 2
f = [4; 5];
A = [1 1
     1.25 .75];
b = [200; 200];
ub = [inf; 150];
[Q2,fval,exitflag,output,lambda] = linprog(-f,A,b,[],[],[],ub);
Q2

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