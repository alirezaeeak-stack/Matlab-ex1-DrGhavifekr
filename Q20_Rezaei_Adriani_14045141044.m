clc;
clear;

% Part (a)
coefficients = input('Enter [a b c] for a*x^2+b*x+c=0: ');

a = coefficients(1);
b = coefficients(2);
c = coefficients(3);

if a == 0
    error('The coefficient a must not be zero.');
end

solutionRoots = roots(coefficients);
disp('Equation roots:')
disp(solutionRoots)

% Part (b): make a plot over a range containing real roots
if isreal(solutionRoots)
    leftEnd = min(real(solutionRoots))-2;
    rightEnd = max(real(solutionRoots))+2;
else
    leftEnd = -10;
    rightEnd = 10;
end

x = linspace(leftEnd,rightEnd,400);
y = polyval(coefficients,x);

figure;
plot(x,y,'b','LineWidth',1.5);
hold on;
plot(x,zeros(size(x)),'k--');
title('Quadratic equation');
xlabel('x');
ylabel('y');
grid on;

% Part (c): mark real roots on the curve
if isreal(solutionRoots)
    plot(real(solutionRoots),zeros(size(solutionRoots)),'ro','MarkerSize',8);
end
hold off;
