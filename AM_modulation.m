clc;
close all;
clear all;

m= 0.3; %modulation index

% MODULATING SIGNAL %

Am=5; %Amplitude of modulating signal
fm=2000; %Frequency of modulating signal
Ta=1/fm; %Time period of modulating signal
t=0:Ta/999:6*Ta; %Total time for simulation
ym=Am*sin(2*pi*fm*t); %Equation of modulating signal
figure(1);
subplot(3,1,1);
plot(t,ym), grid on;
title(' Modulating Signal');
xlabel(' time (sec) ');
ylabel(' Amplitude (volt)' );

% CARRIER SIGNAL %

Ac=Am/m; %Amplitude of carrier signal
fc=fm*10; %Frequency of carrier signal
Tc=1/fc; %Time period of modulating signal
yc=Ac*sin(2*pi*fc*t); %Equation of carrier signal
subplot(3,1,2);
plot(t, yc), grid on;
title(' Carrier Signal');
xlabel(' time (sec) ');
ylabel(' Amplitude (volt)' );

% MODULATED SIGNAL %
y=Ac*(1+m*sin(2*pi*fm*t)).*sin(2*pi*fc*t); %Equation of modulated signal
subplot(3,1,3);
plot(t,y), grid on;
title(' Modulated Signal');
xlabel(' time (sec) ');
ylabel(' Amplitude (volt)' );

% EXPERIMENTAL MODULATION INDEX (for critical and under modulation only) %
ynew=abs(y);
Vmax= max(ynew)
pks = findpeaks(ynew);
Vmin= min(pks)
mu= ((Vmax-Vmin)/(Vmax+Vmin))

