clc;
clear;

% Part (a): odd integers using for
for number = 3:2:34
    fprintf('%d ',number);
end
fprintf('\n');

% The same sequence using while
number = 3;
while number <= 34
    fprintf('%d ',number);
    number = number + 2;
end
fprintf('\n');

% Part (b): sum of the series
x = input('Enter x: ');
n = input('Enter n: ');

seriesSum = 0;
for k = 1:n
    seriesSum = seriesSum + (2/x)^k;
end
fprintf('Series sum = %.6f\n',seriesSum);

% Part (c): robot speed controller
speed = 0;
targetSpeed = 500;
steps = 0;

while abs(targetSpeed-speed) >= 5
    speed = speed + 0.1*(targetSpeed-speed);
    steps = steps + 1;
end

fprintf('Final speed = %.4f\n',speed);
fprintf('Number of steps = %d\n',steps);
