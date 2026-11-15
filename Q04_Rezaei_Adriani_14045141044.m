clc;
clear;

temperature = [22.5 22.8 23.1 24.0 25.2 26.1 26.0 25.4 24.3 23.2];

avgTemp = mean(temperature);
highestTemp = max(temperature);
lowestTemp = min(temperature);
stdTemp = std(temperature);

fprintf('Mean temperature = %.2f C\n', avgTemp);
fprintf('Maximum temperature = %.2f C\n', highestTemp);
fprintf('Minimum temperature = %.2f C\n', lowestTemp);
fprintf('Standard deviation = %.2f C\n', stdTemp);

deviation = temperature - avgTemp;
disp('Deviation of each reading from the mean:')
disp(deviation)

sortedTemp = sort(temperature);
disp('Third value in sorted readings:')
disp(sortedTemp(3))
