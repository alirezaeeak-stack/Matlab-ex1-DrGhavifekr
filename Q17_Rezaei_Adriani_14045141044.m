clc;
clear;

% Part (a)
dailyUse = rand(1,5);
figure;
bar(dailyUse,'r');
title('Daily electricity use');
xlabel('Day');
ylabel('Consumption');

% Part (b)
parts = [22 28 8 33 11];
labels = {'Cooling','Water heater','Lighting','Other devices','Charging'};

% Part (c): separate the largest share
explode = [0 0 0 1 0];
figure;
pie(parts,explode,labels);
title('Household electricity consumption');
