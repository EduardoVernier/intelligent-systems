F = load('lab1_1.mat');
lMen = F.length_men;
lWomen = F.length_women;

xAxis = 1:100;
%figure
%plot(xAxis, lMen, xAxis, lWomen);

hMen = histogram(lMen);
hold on
hWomen = histogram(lWomen);