clc;
clear;

coef = [-5 40 0];
sampleTime = [0 2 4 6];

height = polyval(coef,sampleTime);
disp('Height at selected times:')
disp(height)

groundTimes = roots(coef);
disp('Times when the ball is on the ground:')
disp(groundTimes)

factor1 = [5 0];
factor2 = [-1 8];
productCoef = conv(factor1,factor2);

disp('Coefficients obtained using conv:')
disp(productCoef)
disp('Are the coefficients equal?')
disp(isequal(productCoef,coef))

peakTime = -coef(2)/(2*coef(1));
peakHeight = polyval(coef,peakTime);
fprintf('Maximum height = %.2f m at t = %.2f s\n',peakHeight,peakTime);
