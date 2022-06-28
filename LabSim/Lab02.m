clc;
clear all;
close all;


% Lab02 Simon Lefebvre
% S6App4

load("homme.mat")
sim02 = sim("SimLink02.slx")


figure
hist(sim02.z,50)
figure
hist(sim02.zFiltre,50)
figure
hist(sim02.bruit,50)
figure
hist(sim02.bruitFiltre,50)
