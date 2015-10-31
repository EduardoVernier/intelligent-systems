function  resultImage  = erosion( I, SE )
%DILATION Summary of this function goes here
%   Detailed explanation goes here
    


    resultImage = zeros(length(I(:,1)), length(I(1,:)));
    
    for(i = 1:length(I(:,1)))
        for(j = 1:length(I(1,:)))
            [Y X] = meshgrid (-1:1, -1:1);
            X = SE.*(X + i);
            Y = SE.*(Y + j);
            
            indexArray(:,:,1)= X;
            indexArray(:,:,2)= Y;
            
            min = 1;
            for k = 1:3
                for l = 1:3
                    if ((indexArray(k,l,1)>0 && indexArray(k,l,1) < length (I(:,1))) && ...
                        (indexArray(k,l,2)>0 && indexArray(k,l,2) < length (I(1,:))))
                        if (I(indexArray(k,l,1),indexArray(k,l,2)) < min)
                            min = I(indexArray(k,l,1),indexArray(k,l,2));
                        end                        
                    end
                end
            end
            
            resultImage(i,j) = min;
            
        end
    end
    

end

