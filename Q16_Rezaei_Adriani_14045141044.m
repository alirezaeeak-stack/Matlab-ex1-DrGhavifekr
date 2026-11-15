clc;
clear;

% Part (a)
t = 0:0.1:5;
y1 = (sin(t).*cos(t).^2)./(t.^2+1);
y2 = sqrt(t.^3).*exp(2*t);

figure;
plot(t,y1,'b','LineWidth',1.5);
hold on;
plot(t,y2,'r','LineWidth',2);
legend('y1','y2');
title('Two functions');
xlabel('t');
ylabel('y');
grid on;
hold off;

% Part (b)
x = -2:0.05:2;
f = sin(x).^2 + sinh(x).^2;
z = cos(x).^2 + cosh(x).^2;
k = x.^2 + 2*x.*sin(x);

figure;
subplot(3,1,1);
plot(x,f);
title('f(x) = sin(x)^2 + sinh(x)^2');

subplot(3,1,2);
plot(x,z);
title('Z(x) = cos(x)^2 + cosh(x)^2');

subplot(3,1,3);
plot(x,k);
title('k(x) = x^2 + 2x sin(x)');
xlabel('x');

% Part (c)
tContinuous = 0:0.001:2;
signal = sin(2*pi*3*tContinuous);
tSample = 0:0.1:2;
sampleSignal = sin(2*pi*3*tSample);

figure;
subplot(2,1,1);
plot(tContinuous,signal);
title('Continuous carrier signal');

subplot(2,1,2);
stem(tSample,sampleSignal);
title('Sampled signal');
xlabel('t');

% Part (d): axis labels and grid
ylabel('Amplitude');
grid on;
