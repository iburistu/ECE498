% Zachary Linkletter   ECE498   hw4

clc
clear global

leap = [1:5000];
leap = ((mod(leap,4) == 0) - (mod(leap, 100) == 0) + (mod(leap, 400) == 0));
sum = sum(leap)
