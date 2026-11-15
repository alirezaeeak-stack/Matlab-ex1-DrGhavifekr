clc;
clear;

M = 10 * rand(4,4);
disp('Original matrix:')
disp(M)

largest = max(M(:));
smallest = min(M(:));

[rowLarge,colLarge] = find(M == largest,1);
[rowSmall,colSmall] = find(M == smallest,1);

temp = M(rowLarge,colLarge);
M(rowLarge,colLarge) = M(rowSmall,colSmall);
M(rowSmall,colSmall) = temp;

disp('Matrix after exchanging maximum and minimum:')
disp(M)

columnAverage = mean(M);
disp('Mean of each column:')
disp(columnAverage)
