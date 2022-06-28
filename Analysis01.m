% Génie Électrique - Université de Sherbrooke
% App4 S6 -  Communications en bande de base et Processus aléatoires
% Simon Lefebvre & Gabriel Gaouette
% lefs3303         gaog2501

clc;
clear all;
close all;

load("sons.mat")
Fs = 16000; 


figure('name','Signal Original');
plot(Sonf16(:,1),Sonf16(:,2),'g');


L = length(Sonf16)
n = 2^nextpow2(L);
Sonf16_fft = fft(Sonf16(:,2),n);
f = Fs*(0:(n/2))/n;
P = abs(Sonf16_fft/n);


figure('name','fft');
subplot(2,1,1);
plot(f,P(1:n/2+1));
title('FFT Female sound')
xlabel('Frequency (f)')
ylabel('|Y(f)|')
subplot(2,1,2);


L = length(Sonm16)
n = 2^nextpow2(L);
Sonm16_fft = fft(Sonm16(:,2),n);
f = Fs*(0:(n/2))/n;
P = abs(Sonm16_fft/n);
plot(f,P(1:n/2+1));
title('FFT Male sound')
xlabel('Frequency (f)')
ylabel('|Y(f)|')


