clc;
clear;

syms tau
t = 0:0.01:5;
velocity = 3*t.^2 + 2*t;

distanceNumerical = trapz(t,velocity);

velocitySymbolic = 3*tau^2 + 2*tau;
distanceSymbolic = int(velocitySymbolic,tau,0,5);
distanceExact = double(distanceSymbolic);

fprintf('Distance with trapz (step 0.01) = %.6f m\n',distanceNumerical);
fprintf('Exact distance = %.6f m\n',distanceExact);

tCoarse = 0:0.5:5;
vCoarse = 3*tCoarse.^2 + 2*tCoarse;
distanceCoarse = trapz(tCoarse,vCoarse);
fprintf('Distance with step 0.5 = %.6f m\n',distanceCoarse);
fprintf('Absolute error = %.6f m\n',abs(distanceCoarse-distanceExact));

cumulativeDistance = cumtrapz(t,velocity);
halfIndex = find(cumulativeDistance >= distanceExact/2,1);
fprintf('Half of total distance is passed at about t = %.2f s\n',t(halfIndex));
