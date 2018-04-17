% Zachary Linkletter
% ECE 498 HW 05
% 3/5/18

clear all;
clc

ece271 = [ % ID, Score
900, 34;
801, 90;
700, 77;
400, 33]
 
ece473 = [ % ID, Score
900, 67;
802, 99;
700, 35;
500, 88]
 
% Combine ece271 and ece473 score report into a single one
ids = union(ece271(:,1), ece473(:,1));
scores = NaN*ones(length(ids),3);
scores(:,1) = ids;
[score271, ia, ib] = intersect(ids, ece271(:,1));
[score473, Ia, Ib] = intersect(ids, ece473(:,1));
scores(ia, 2) = ece271(ib, 2);
scores(Ia, 3) = ece473(Ib, 2);

scores

str = 'Welcome to ECE 498! My phone number is 207-581-2499. My email is hello@maine.edu. How to contact you?';
 
addr1 = '5713 Chadbourne Hall, Orono, ME 04469-5713';
addr2 = '73 Harlow St, Bangor, ME 04401';
addr3 = '141 Center St, Old Town, ME 04468';
addr{1} = addr1;
addr{2} = addr2;
addr{3} = addr3;

numwords = length(regexp(str,'\w*\s'))
numsentences = length(regexp(str, '(?<=[!.?])\s'))
email = regexp(str,'[a-z_]+@[a-z]+\.(com|net|edu)', 'match')
number = regexp(str,'\d{3}-\d{3}-\d{4}', 'match')
postalcode = regexp(addr, '\d{5}', 'match');
codes = [postalcode{1,:}]


filename = fullfile('myPatients.dat');

T = readtable(filename);

avgage = mean(T.Age)

T.BMI = (T.Weight*0.453592)./(T.Height*0.0254).^2

writetable(T, 'myPatients2.dat')

