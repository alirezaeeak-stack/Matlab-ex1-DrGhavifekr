clc;
clear;

syms t x

expr1 = (1-cos(t))/t^2;
limit1 = limit(expr1,t,0);
disp('Limit of (1-cos(t))/t^2 at zero:')
disp(limit1)

expr2 = (2*t+1)/(t-3);
limit2 = limit(expr2,t,inf);
disp('Limit at infinity:')
disp(limit2)

expr3 = 1/x;
leftLimit = limit(expr3,x,0,'left');
rightLimit = limit(expr3,x,0,'right');

disp('Left-hand limit of 1/x at zero:')
disp(leftLimit)
disp('Right-hand limit of 1/x at zero:')
disp(rightLimit)
