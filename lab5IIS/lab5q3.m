close all;

I = im2double(imread('chest.pgm'));
I0001 = imnoise(I, 'gaussian', 0, 0.001);
I001 = imnoise(I, 'gaussian', 0, 0.01);
I005 = imnoise(I, 'gaussian', 0, 0.05);


figure;
subplot(2, 2, 1);
BW = edge(I, 'Canny');
imshow(BW);
title('Canny - default parameters');

subplot(2, 2, 2);
BW = edge(I0001, 'Canny');
imshow(BW);
title('Gaussian Noise with 0.001 variance');

subplot(2, 2, 3);
BW = edge(I001, 'Canny');
imshow(BW);
title('Gaussian Noise with 0.01 variance');

subplot(2, 2, 4);
BW = edge(I005, 'Canny');
imshow(BW);
title('Gaussian Noise with 0.05 variance');

%%%%%%%%
figure;
subplot(2, 2, 1);
BW = edge(I, 'Canny', [0.1 0.25]);
imshow(BW);
title('Canny - Threshold 0.1 / 0.25');

subplot(2, 2, 2);
BW = edge(I0001, 'Canny', [0.1 0.25]);
imshow(BW);
title('Gaussian Noise with 0.001 variance');

subplot(2, 2, 3);
BW = edge(I001, 'Canny', [0.1 0.25]);
imshow(BW);
title('Gaussian Noise with 0.01 variance');

subplot(2, 2, 4);
BW = edge(I005, 'Canny', [0.1 0.25]);
imshow(BW);
title('Gaussian Noise with 0.05 variance');

%%%%%%%%
figure;
subplot(2, 2, 1);
BW = edge(I, 'Canny', [0.1 0.25], sqrt(4));
imshow(BW);
title('Threshold 0.1/0.25 - Sigma = sqrt(4)');

subplot(2, 2, 2);
BW = edge(I0001, 'Canny', [0.1 0.25], sqrt(4));
imshow(BW);
title('Gaussian Noise with 0.001 variance');

subplot(2, 2, 3);
BW = edge(I001, 'Canny', [0.1 0.25], sqrt(4));
imshow(BW);
title('Gaussian Noise with 0.01 variance');

subplot(2, 2, 4);
BW = edge(I005, 'Canny', [0.1 0.25], sqrt(4));
imshow(BW);
title('Gaussian Noise with 0.05 variance');
%%%%%%%%
figure;
subplot(2, 2, 1);
BW = edge(I, 'Canny', [0.1 0.25], sqrt(8));
imshow(BW);
title('Threshold 0.1/0.25 - Sigma = sqrt(8)');

subplot(2, 2, 2);
BW = edge(I0001, 'Canny', [0.1 0.25], sqrt(8));
imshow(BW);
title('Gaussian Noise with 0.001 variance');

subplot(2, 2, 3);
BW = edge(I001, 'Canny', [0.1 0.25], sqrt(8));
imshow(BW);
title('Gaussian Noise with 0.01 variance');

subplot(2, 2, 4);
BW = edge(I005, 'Canny', [0.1 0.25], sqrt(8));
imshow(BW);
title('Gaussian Noise with 0.05 variance');


%%%%%%%%%%%
%%%%%%%%
figure;
subplot(2, 2, 1);
BW = edge(I, 'Canny', [0.3 0.5]);
imshow(BW);
title('Canny - Threshold 0.3 / 0.5');

subplot(2, 2, 2);
BW = edge(I0001, 'Canny', [0.3 0.5]);
imshow(BW);
title('Gaussian Noise with 0.001 variance');

subplot(2, 2, 3);
BW = edge(I001, 'Canny', [0.3 0.5]);
imshow(BW);
title('Gaussian Noise with 0.01 variance');

subplot(2, 2, 4);
BW = edge(I005, 'Canny', [0.3 0.5]);
imshow(BW);
title('Gaussian Noise with 0.05 variance');
