% Génie Électrique - Université de Sherbrooke
% App4 S6 -  Communications en bande de base et Processus aléatoires
% Simon Lefebvre & Gabriel Gaouette
% lefs3303         gaog2501

clc;
clear all;
close all;

load("sons.mat");
Fs = 16000; 

simEssaie = sim("Essaie_01.slx");

figure;
plot(y);

[xc,delai]=xcorr(y1,y4);
figure;
title('Delay')
plot(delai,xc)


figure;
subplot(2,1,1);
plot(y2);
subplot(2,1,2);
plot(y4);


sound = audioplayer(y, 16000);
play(sound)

