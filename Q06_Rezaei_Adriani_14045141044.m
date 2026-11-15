clc;
clear;

stock = [120 80 45; 200 60 30; 90 140 75];
price = [35000; 80000; 120000];

branchValue = stock * price;
fprintf('Value of branch 1 = %.2f Toman\n',branchValue(1));
fprintf('Value of branch 2 = %.2f Toman\n',branchValue(2));
fprintf('Value of branch 3 = %.2f Toman\n',branchValue(3));

elementProduct = stock .* price;
disp('Element-by-element product A.*p:')
disp(elementProduct)

disp('Transpose of stock matrix:')
disp(stock')

totalItems = stock * ones(3,1);
disp('Total number of items in each branch:')
disp(totalItems)
