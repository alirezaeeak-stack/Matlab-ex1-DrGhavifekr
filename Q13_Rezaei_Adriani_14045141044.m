clc;
clear;

syms s t

laplaceCurrent = 12/(s*(4+0.2*s));
currentTime = ilaplace(laplaceCurrent,s,t);

disp('Current in time domain:')
disp(currentTime)

current01 = double(subs(currentTime,t,0.1));
current1 = double(subs(currentTime,t,1));

fprintf('Current at 0.1 s = %.4f A\n',current01);
fprintf('Current at 1 s = %.4f A\n',current1);

steadyCurrent = limit(currentTime,t,inf);
dcCurrent = 12/4;

fprintf('Steady-state current from limit = %.4f A\n',double(steadyCurrent));
fprintf('Voltage divided by resistance = %.4f A\n',dcCurrent);
