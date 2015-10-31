close all;

I = im2double(imread('chest.pgm'));
I0001 = imnoise(I, 'gaussian', 0, 0.001);
I001 = imnoise(I, 'gaussian', 0, 0.01);
I005 = imnoise(I, 'gaussian', 0, 0.05);
% Structuring element
SE1 = [ 0 1 0; 1 1 1; 0 1 0];
SE2 = [ 1 1 1; 1 1 1; 1 1 1];

dilatedImage = dilation (I, SE1);
erodedImage = erosion (I, SE1); 

figure;
subplot (1,3,1);
imshow(I);
title ('Original Image');
subplot(1,3,2);
imshow(dilatedImage);
title('Dilated Image');
subplot(1,3,3);
imshow(erodedImage);
title('Eroded Image');



erodedImage0001 = erosion (I0001, SE1);
erodedImage001 = erosion (I001, SE1);
erodedImage005 = erosion (I005, SE1);


figure;
boundaryExtraction = I - erodedImage;
subplot(2,2,1);
imshow(boundaryExtraction);
title('Boundary Extraction');

boundaryExtraction = I0001 - erodedImage0001;
subplot(2,2,2);
imshow(boundaryExtraction);
title('Gaussian Noise with 0.001 variance');

boundaryExtraction = I001 - erodedImage001;
subplot(2,2,3);
imshow(boundaryExtraction);
title('Gaussian Noise with 0.01 variance');


boundaryExtraction = I005 - erodedImage005;
subplot(2,2,4);
imshow(boundaryExtraction);
title('Gaussian Noise with 0.05 variance');


% Using different SE
erodedImage0001 = erosion (I0001, SE2);
erodedImage001 = erosion (I001, SE2);
erodedImage005 = erosion (I005, SE2);


figure;
boundaryExtraction = I - erodedImage;
subplot(2,2,1);
imshow(boundaryExtraction);
title('Boundary Extraction');

boundaryExtraction = I0001 - erodedImage0001;
subplot(2,2,2);
imshow(boundaryExtraction);
title('Gaussian Noise with 0.001 variance');

boundaryExtraction = I001 - erodedImage001;
subplot(2,2,3);
imshow(boundaryExtraction);
title('Gaussian Noise with 0.01 variance');


boundaryExtraction = I005 - erodedImage005;
subplot(2,2,4);
imshow(boundaryExtraction);
title('Gaussian Noise with 0.05 variance');

