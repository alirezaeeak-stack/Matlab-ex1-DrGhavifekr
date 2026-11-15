clc;
clear;

voltage = input('Enter voltage (V): ');
resistance = input('Enter resistance (Ohm): ');

current = voltage / resistance;
power = voltage * current;

fprintf('Current = %.4f A\n', current);
fprintf('Power = %.4f W\n', power);
