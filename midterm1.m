clear
clc

%% Question 1:

% A:

a = [0 0 0]
b = [4 9 16]

d = sqrt((a(:,1) - b(:,1)).^2 + (a(:,2) - b(:,2)).^2 + (a(:,3) - b(:,3)).^2)

% B:
m1 = [1 2 3 4 5; 5 6 7 8 9]

m2 = m1([1 2], [2 3 4])

%% Question 2:

% A
ece271 = [% ID, Scores
       101, 98;
       121, 50;
       157, 43;
       189, 80;
       176, 75;
       107, 99;
       120, 30;
       175, 61;
       135, 60];

 
ece498 = [% ID, Scores
       101, 21;
       131, 70;
       157, 93;
       189, 100;
       176, 75;
       107, 99;
       120, 30;
       175, 61; ];

maxscoreID = ece271(ece271(:,2) == max(ece271(:,2)),1)

% B:

% Combine ece271 and ece473 score report into a single one
ids = union(ece271(:,1), ece498(:,1));
scores = NaN*ones(length(ids),3);
scores(:,1) = ids;
[score271, ia, ib] = intersect(ids, ece271(:,1));
[score473, Ia, Ib] = intersect(ids, ece498(:,1));
scores(ia, 2) = ece271(ib, 2);
scores(Ia, 3) = ece498(Ib, 2);

scores

%% Question 3:

% A:

acell = {'abc', [1 2 3; 4 5 6]; 4, [9 8 7; 6 5 4; 3 2 1]}

acell{1,2} = [acell{1,2}(1,:); acell{1,2}(2,:) + 4]

array = acell{1,2}

% B:

% reshape the cell i just made or reshape the whole array?

% justarray = reshape(acell,[1,4])

justcell = reshape(acell,[1,4])

%% Question 4:

%data = ['LastName','Gender','Age','Location','Height','Weight','Smoker','Systolic','Diastolic','SelfAssessedHealthStatus';
%   'Smith','Male',38,'County General Hospital',71,176,1,124,93,'Excellent';
%    'Johnson','Male',43,'VA Hospital',69,163,0,109,77,'Fair';
%    'Williams','Female',38,'St. Mary''s Medical Center',64,131,0,125,83,'Good';
%    'Jones','Female',40,'VA Hospital',67,133,0,117,75,'Fair';
%    'Brown','Female',49,'County General Hospital',64,119,0,122,80,'Good';
%    'Davis','Female',46,'St. Mary''s Medical Center',68,142,0,121,70,'Good';
%    'Miller','Female',33,'VA Hospital',64,142,1,130,88,'Good'];

%csvwrite('mypatients.dat', data);
T = readtable('myPatients.dat');

averageage = mean(T.Age)

%% Question 5:

test1 = [1, 2, -1, NaN, 7];
test2 = [0; 1; NaN];

[ANS] = arrayfun(@pwise, test1)
arrayfun(@pwise, test2)


function [y] = pwise(x)
  if (x >= 6)
    y = x + 3;
  end
  if (x >= 0 && x < 6)
    y = 2 .* x;
  end
  if (x < 0)
    y = x .^ 2;
  end
  if (isnan(x))
    y = 0;
  end
end
