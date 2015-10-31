function [ output_args ] = colorPoint( data )
%COLORPOINT Summary of this function goes here
%   Detailed explanation goes here
for i = 1:length(data)
    hold on;
    if (data(i,3) == 1)
        scatter(data(i,1),data(i,2), '.r');
    elseif (data(i,3)== 2)
        scatter(data(i,1),data(i,2), '.b');
    elseif (data(i,3) == 3)
        scatter(data(i,1),data(i,2), '.g');
    elseif (data(i,3) == 4)
        scatter(data(i,1),data(i,2), '.c');
    end
end    
end

