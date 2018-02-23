clear all
clc

% The first column consists of student ids.
% The second column consists of their scores.
roster = [
        8000          80
        8001          39
        8002          24
        8003          40
        8004          10
        8005          13
        8006          94
        8007          96
        8008          58
        8009          16
        8010          23
        8011          35
        8012          82
        8013          12
        8014          34
        8015          17
        8016          65
        8017          73
        8018          65
        8019          4];
    
    %Q1:
    
    Q1 = size(roster,1)
    
    %Q2:
    
    Q2 = max(roster(:,2))
    
    %Q3:
    
    Q3 = roster(roster(:,2) == max(roster(:,2)),1)
    
    %Q4:
    
    Q4 = min(roster(:,2))
    
    %Q5:
    
    Q5 = median(roster(:,2))
    
    %Q6:
    
    Q6 = mean(roster(:,2))
    
    %Q7:
    
    Q7 = sum(roster(:,2))
    
    %Q8:
    
    Q8 = sum(roster(:,2) >= 60)
    
    %Q9:
    
    Q9 = sortrows(roster, 2)
    
    %Q10:
    
    roster(roster(:,2) == max(roster(:,2)), :) = []
    