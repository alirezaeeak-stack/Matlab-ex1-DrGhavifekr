clc;
clear;

time = [0 1 2 5 10];
chargeVoltage = 12 * (1 - exp(-time/2));

fprintf('Charging voltage:\n');
fprintf('t = %2d s, V = %.4f V\n',[time; chargeVoltage]);

time95 = -2 * log(0.05);
fprintf('Time to reach 95%% = %.4f s\n',time95);

dischargeVoltage = 12 * exp(-time/2);
fprintf('Discharge voltage at 10 seconds = %.4f V\n',dischargeVoltage(5));
