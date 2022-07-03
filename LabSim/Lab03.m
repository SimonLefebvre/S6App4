clc;
clear all;
close all;


% Lab3 Simon Lefebvre
% S6App4

load("Sonf16.mat")
sim03 = sim("SimLink03.slx")


% figure
% hist(sim03.z,50)
% figure
% hist(sim03.zc,50)

figure
hist(sim03.SansComp,50)
figure
hist(sim03.AvecComp,50)


figure
plot(sim03.SansComp)
figure
plot(sim03.AvecComp)




y = audioplayer(sim03.AvecComp, 16000);
play(y)
