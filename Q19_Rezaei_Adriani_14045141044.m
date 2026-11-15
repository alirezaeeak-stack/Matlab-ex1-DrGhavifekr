clc;
clear;

% Part (a)
A = rand(4);
disp('Random matrix A:')
disp(A)

isSymmetricA = isequal(A,A');
disp('Is A symmetric?')
disp(isSymmetricA)

% Part (b)
S = (A+A')/2;
disp('Symmetric matrix S:')
disp(S)
disp('Is S symmetric?')
disp(isequal(S,S'))

% Part (c)
B = [2 3 4; 3 5 6; 4 6 8];
disp('Manually entered matrix B:')
disp(B)
disp('Is B symmetric?')
disp(isequal(B,B'))
