close all;

data = load('data_lvq');
data = data.w5_1;

% Setting class identifier
data(1:50,3) = 1;
data(51:100,3) = 2;

lqv1(data, 2, 0.002, 500);