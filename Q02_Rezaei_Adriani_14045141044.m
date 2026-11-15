clc;
clear;

dailyEnergy = 4.2;
unitPrice = 5000;
monthDays = 30;
yearDays = 365;

incomeMonth = dailyEnergy * unitPrice * monthDays;
incomeYear = dailyEnergy * unitPrice * yearDays;

fprintf('Monthly income: %.2f Toman\n', incomeMonth);
fprintf('Annual income: %.2f Toman\n', incomeYear);
fprintf('Solar energy share: 100%%\n');

who

format long
disp('10/3 with format long:')
disp(10/3)

format short
disp('10/3 with format short:')
disp(10/3)
