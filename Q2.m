clc;
clear all;
close all;

K=23.1;
T=0.12;
Kp=5;
Ki=0;
Kd=0;

s=tf('s');
T=K*(Kp*s+Ki)/((T*(s^3))+((1+K*Kd)*(s^2))+(K*Kp*s)+(K*Ki));
r=1/(s^2);
y=T*r;
E=r-y;
step(E);
xlim([0 10]);
ylabel('Amplitude');
xlabel('Time');
title('Step Response of Error');
