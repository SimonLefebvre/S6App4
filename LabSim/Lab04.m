clc;
clear all;
close all;


% Lab4 Simon Lefebvre
% S6App4

load("Sonf16.mat")
sim04 = sim("SimLink04.slx")


figure
plot(sim04.z,'b')
hold on;
plot(Sonf16(:,2)*50,'g')
plot(sim04.Err,'r')


figure
plot(sim04.z2*128,'r');
hold on;
plot(sim04.z,'b');
plot(sim04.z2*128 - sim04.z,'g')