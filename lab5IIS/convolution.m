function resultImage = convolution( originalImage, kernel )
%CONVOLUTION takes an image and a 3x3 kernel and applies convolution
    
    resultImage = zeros(length(originalImage(:,1)), length(originalImage(1,:)));
    % padding image with boundary pixels
    paddedImage = padarray (originalImage, [1 1], 'replicate', 'both');

    % 180º rotation of kernel in order to perform convolution, not correlation
    % K        [0]       [1]      [2]        [3]       [4]      [5]        [6]       [7]      [8]
    %       (x+1,y+1)  (x,y+1)  (x-1,y+1)  (x+1,y)    (x,y)    (x-1,y)   (x+1,y-1)  (x,y-1)  (x-1,y-1)
    
    
    for x = 2:(length(paddedImage(:,1))-1)
        for y = 2:(length(paddedImage(1,:))-1)      
            newValue = 0;
            newValue = newValue + (paddedImage(x+1, y+1)) * kernel (1); 
            newValue = newValue + (paddedImage(x,   y+1)) * kernel (2);
            newValue = newValue + (paddedImage(x-1, y+1)) * kernel (3);
            newValue = newValue + (paddedImage(x+1,   y)) * kernel (4); 
            newValue = newValue + (paddedImage(x,     y)) * kernel (5);
            newValue = newValue + (paddedImage(x-1,   y)) * kernel (6);
            newValue = newValue + (paddedImage(x+1, y-1)) * kernel (7);
            newValue = newValue + (paddedImage(x   ,y-1)) * kernel (8);
            newValue = newValue + (paddedImage(x-1, y-1)) * kernel (9); 
            if (newValue < 0) 
                newValue = 0;
            end
            if(newValue>1) 
                newValue = 1;
            end
            resultImage(x-1,y-1) = newValue;
        end
    end

end

