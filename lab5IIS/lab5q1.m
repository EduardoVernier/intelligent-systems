close all;

I = im2double(imread('chest.pgm'));

% Convolution Kernels
hRbt1 = [0 0 0; 0 -1 0; 0 0 1];
hRbt2 = [0 0 0; 0 0 -1; 0 1 0];
hPwt1 = [-1 -1 -1; 0 0 0; 1 1 1];
hPwt2 = [-1 0 1; -1 0 1; -1 0 1];
hSbl1 = [-1 -2 -1; 0 0 0; 1 2 1];
hSbl2 = [-1 0 1; -2 0 2; -1 0 1];

% Images with added noise
I0001 = imnoise(I, 'gaussian', 0, 0.001);
I001 = imnoise(I, 'gaussian', 0, 0.01);
I005 = imnoise(I, 'gaussian', 0, 0.05);

% Images with different amounts of noise
figure;
subplot(2, 2, 1);
imshow(I);
title('Original');
subplot(2, 2, 2);
imshow(I0001);
title('Gaussian Noise with 0.001 variance');
subplot(2, 2, 3);
imshow(I001);
title('Gaussian Noise with 0.01 variance');
subplot(2, 2, 4);
imshow(I005);
title('Gaussian Noise with 0.05 variance');

% Roberts kernel 
figure;
Rbt1 = convolution(I, hRbt1);
Rbt2 = convolution(I, hRbt2);
Rbt = sqrt(Rbt1.^2+Rbt2.^2);
subplot(2, 2, 1);
imshow(Rbt);
title('Roberts Filter');

Rbt1 = convolution(I0001, hRbt1);
Rbt2 = convolution(I0001, hRbt2);
Rbt = sqrt(Rbt1.^2+Rbt2.^2);
subplot(2, 2, 2);
imshow(Rbt);
title('Gaussian Noise with 0.001 variance');

Rbt1 = convolution(I001, hRbt1);
Rbt2 = convolution(I001, hRbt2);
Rbt = sqrt(Rbt1.^2+Rbt2.^2);
subplot(2, 2, 3);
imshow(Rbt);
title('Gaussian Noise with 0.01 variance');

Rbt1 = convolution(I005, hRbt1);
Rbt2 = convolution(I, hRbt2);
Rbt = sqrt(Rbt1.^2+Rbt2.^2);
subplot(2, 2, 4);
imshow(Rbt);
title('Gaussian Noise with 0.05 variance');


% Prewitt kernel
figure;
Pwt1 = convolution(I, hPwt1);
Pwt2 = convolution(I, hPwt2);
Pwt = sqrt(Pwt1.^2+Pwt2.^2);
subplot(2, 2, 1);
imshow(Pwt);
title('Prewitt Filter');

Pwt1 = convolution(I0001, hPwt1);
Pwt2 = convolution(I0001, hPwt2);
Pwt = sqrt(Pwt1.^2+Pwt2.^2);
subplot(2, 2, 2);
imshow(Pwt);
title('Gaussian Noise with 0.001 variance');

Pwt1 = convolution(I001, hPwt1);
Pwt2 = convolution(I001, hPwt2);
Pwt = sqrt(Pwt1.^2+Pwt2.^2);
subplot(2, 2, 3);
imshow(Pwt);
title('Gaussian Noise with 0.01 variance');

Pwt1 = convolution(I005, hPwt1);
Pwt2 = convolution(I001, hPwt2);
Pwt = sqrt(Pwt1.^2+Pwt2.^2);
subplot(2, 2, 4);
imshow(Pwt);
title('Gaussian Noise with 0.05 variance');


% Sobel kernel vertical
figure;
Sbl1 = convolution(I, hSbl1);
Sbl2 = convolution(I, hSbl2);
Sbl = sqrt(Sbl1.^2+Sbl2.^2);
subplot(2, 2, 1);
imshow(Sbl);
title('Sobel Filter');

Sbl1 = convolution(I0001, hSbl1);
Sbl2 = convolution(I0001, hSbl2);
Sbl = sqrt(Sbl1.^2+Sbl2.^2);
subplot(2, 2, 2);
imshow(Sbl);
title('Gaussian Noise with 0.001 variance');

Sbl1 = convolution(I001, hSbl1);
Sbl2 = convolution(I001, hSbl2);
Sbl = sqrt(Sbl1.^2+Sbl2.^2);
subplot(2, 2, 3);
imshow(Sbl);
title('Gaussian Noise with 0.01 variance');

Sbl1 = convolution(I005, hSbl1);
Sbl2 = convolution(I005, hSbl2);
Sbl = sqrt(Sbl1.^2+Sbl2.^2);
subplot(2, 2, 4);
imshow(Sbl);
title('0.05 Gaussian Noise Added');
