clc;
clear;

usage = [245 400];
bill = zeros(size(usage));

for k = 1:length(usage)
    if usage(k) <= 100
        bill(k) = usage(k) * 1500;
    else
        bill(k) = 100 * 1500 + (usage(k) - 100) * 3000;
    end
end

fprintf('Bill for 245 kWh = %.2f Toman\n', bill(1));
fprintf('Bill for 400 kWh = %.2f Toman\n', bill(2));
