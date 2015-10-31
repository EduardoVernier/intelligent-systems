xAxis = [0.5 0.2 0.1 0.05 0.02 0.01];

index = 1;
for tValue = xAxis
    temp = tspinit(50, 300, tValue, 1);
    plotdata(index,1) = temp(1);
    plotdata(index,2) = temp(2);
    index = index + 1;
end

figure
errorbar(xAxis, plotdata(:,1), plotdata(:,2), 'r')
ylabel('Path length');
xlabel('T value');
title(['Plot with errorbar -n =',num2str(n,'%3.0f'),  ...
    '   final length =',num2str(curlen,'%4.4f'),  ...
    '   T-start =',num2str(temps,'%4.4f')],   ...
    'fontsize',13);
