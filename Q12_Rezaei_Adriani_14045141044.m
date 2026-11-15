clc;
clear;

% Part (a)
complexResult = (2+3i)/(3-4i);
fprintf('Result = %.4f + %.4fi\n',real(complexResult),imag(complexResult));

% Part (b)
R = 10;
L = 0.1;
C = 2e-4;
f = 50;
w = 2*pi*f;

Z = R + 1i*(w*L - 1/(w*C));
fprintf('Real part of Z = %.4f Ohm\n',real(Z));
fprintf('Imaginary part of Z = %.4f Ohm\n',imag(Z));

% Part (c)
magnitudeZ = abs(Z);
phaseDegree = angle(Z)*180/pi;
fprintf('Magnitude of Z = %.4f Ohm\n',magnitudeZ);
fprintf('Phase of Z = %.4f degree\n',phaseDegree);
