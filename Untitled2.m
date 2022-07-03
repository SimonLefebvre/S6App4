


figure;
plot(y);

[xc,delai]=xcorr(y1,y4);


figure;
subplot(2,1,1)
plot(y2);
subplot(2,1,2)
plot(y4);



sound = audioplayer(y, 16000);
play(sound)
