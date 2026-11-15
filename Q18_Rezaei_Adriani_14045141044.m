clc;
clear;

a = input('Enter a positive number: ');

if a <= 0
    error('The input must be greater than zero.');
end

x = a;
previous = 0;
iterationCount = 0;

while abs(x-previous) >= 0.0001
    previous = x;
    x = (x + a/x)/2;
    iterationCount = iterationCount + 1;
end

exactRoot = sqrt(a);
fprintf('Root using iteration = %.6f\n',x);
fprintf('Number of iterations = %d\n',iterationCount);
fprintf('sqrt(a) = %.6f\n',exactRoot);
fprintf('Absolute difference = %.8f\n',abs(x-exactRoot));
