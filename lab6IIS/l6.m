close all;

data = load('w6_1x.mat');
data = data.w6_1x;

% k = 2
QE0 = ulvq(data, 2, 0.001, 100);
QE1 = ulvq(data, 2, 0.01, 100);
QE2 = ulvq(data, 2, 0.05, 100);
QE3 = ulvq(data, 2, 0.1, 100);

figure;
hold on;
plot (1:100, QE0, 'r', 'LineWidth', 2);
plot (1:100, QE1, 'g', 'LineWidth', 2);
plot (1:100, QE2, 'b', 'LineWidth', 2);
plot (1:100, QE3, 'm', 'LineWidth', 2);
xlabel('Epoch (t)');
ylabel('Quantization Error');
legend('0.001', '0.01', '0.05', '0.1');
title('Unsupervised Competitive Learning (VQ) - K = 2');


% k = 4
QE0 = ulvq(data, 4, 0.001, 100);
QE1 = ulvq(data, 4, 0.01, 100);
QE2 = ulvq(data, 4, 0.05, 100);
QE3 = ulvq(data, 4, 0.1, 100);

figure;
hold on;
plot (1:100, QE0, 'r', 'LineWidth', 2);
plot (1:100, QE1, 'g', 'LineWidth', 2);
plot (1:100, QE2, 'b', 'LineWidth', 2);
plot (1:100, QE3, 'm', 'LineWidth', 2);
xlabel('Epoch (t)');
ylabel('Quantization Error');
legend('0.001', '0.01', '0.05', '0.1');
title('Unsupervised Competitive Learning (VQ) - K = 4');

