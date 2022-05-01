% test for GUI
close all;clc
Y = magic(4);
figure
plot(Y);
figure
y = [2 4 6; 3 4 5];
b = bar(y);

figure
b = bar3([2 4 64 64 6; 3 4 5 6 50;6 7 8 8 15]);

figure
subplot(211)
Y = plot(magic(4));
subplot(212)
bar(magic(4));

figure
subplot(221)
b = bar([2 4 6 5 6; 3 4 5 6 5;6 7 8 8 7]);
subplot(222)
pie([1 2 3 4]);
subplot(223)
plot([1 2 3 4;4 5 7 1]);
subplot(224)
b = bar([2 4 6 6 6; 3 4 5 6 5;6 7 8 8 1]);


