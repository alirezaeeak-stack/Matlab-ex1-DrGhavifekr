clc;
clear;

% Part (a): Celsius to Kelvin

function kelvin = c2k(celsius)
% Convert temperature from Celsius to Kelvin.
kelvin = celsius + 273.15;
end

tempC = [0 25 100];
tempK = c2k(tempC);
disp('Temperatures in Kelvin:')
disp(tempK)

% Part (b): norm 3

function result = norm3(v)
% Calculate the 3-norm using a loop and an accumulator.
total = 0;
for k = 1:length(v)
    total = total + abs(v(k))^3;
end
result = total^(1/3);
end

vec1 = [3 4];
vec2 = [1 2 2];

fprintf('Norm 3 of [3 4] = %.4f\n',norm3(vec1));
fprintf('Norm 3 of [1 2 2] = %.4f\n',norm3(vec2));

% Part (c): electrical power

function [P,S] = powerCalc(V,I,pf)
% Calculate active and apparent electrical power.
S = V*I;
P = S*pf;
end

[activePower,apparentPower] = powerCalc(220,5,0.9);
fprintf('Active power = %.2f W\n',activePower);
fprintf('Apparent power = %.2f VA\n',apparentPower);
