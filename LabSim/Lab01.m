clc;
clear all;
close all;


% Lab01 Simon Lefebvre
% S6App4

load("homme.mat")
sim01 = sim("SimLink01.slx")


Pmoy = sum(homme(:,2).^2) / length(homme)
Vrms = sqrt(Pmoy)


% PBruit = sum(sim01.simout.^2) / length(sim01.simout)
% BruitRMS = sqrt(PBruit)



y = audioplayer(sim01.z, 16000);
play(y)

