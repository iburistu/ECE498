% Zachary Linkletter   ECE498   hw4

clc
clear all

leap = [1:5000];
leap = ((mod(leap,4) == 0) - (mod(leap, 100) == 0) + (mod(leap, 400) == 0));
sum = sum(leap)

% Team 1:
A = 1; B = 2; C = 3;
Team_1 = [A, B, C];
 
% Team 2:
X = 4; Y = 5; Z = 6;
Team_2 = [X, Y, Z];
 
all_permutations = perms(Team_2);
% all_permutations(i, 1) plays against A
% all_permutations(i, 2) plays against B
% all_permutations(i, 3) plays against C
% A cannot play against X
% C cannot play against X and Z

for i = 1:size(all_permutations, 1)
    if ((all_permutations(i, 1) > 4) && (i ~= 1) && (i ~= 2))
            fprintf('%d plays against %d\n', i, 1)
    end
    if (all_permutations(i, 2) && (i ~= 2) && (i ~= 1))
            fprintf('%d plays against %d\n', i, 2)
    end
    if ((all_permutations(i, 1) == 5)  && (i ~= 3))
            fprintf('%d plays against %d\n', i, 3)
    end
end