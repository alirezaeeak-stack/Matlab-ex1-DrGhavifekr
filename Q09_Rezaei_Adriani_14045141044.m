clc;
clear;

syms tau
step = 0.5;
t = 0:step:20;
position = 60 * (1 - exp(-t/5));

velocityDiff = diff(position)/step;
velocityGrad = gradient(position,step);

fprintf('Length from diff = %d\n',length(velocityDiff));
fprintf('Length from gradient = %d\n',length(velocityGrad));

positionSym = 60 * (1 - exp(-tau/5));
velocitySym = diff(positionSym,tau);
velocityAt5 = double(subs(velocitySym,tau,5));
fprintf('Symbolic velocity at 5 s = %.4f m/s\n',velocityAt5);

maxVelocity = max(velocityGrad);
fprintf('Maximum numerical velocity = %.4f m/s\n',maxVelocity);

index10 = find(t == 10);
acceleration = gradient(velocityGrad,step);
fprintf('Velocity at 10 s = %.4f m/s\n',velocityGrad(index10));
fprintf('Acceleration at 10 s = %.4f m/s^2\n',acceleration(index10));
