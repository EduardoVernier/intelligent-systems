function mis = misclassif( data, protoList )

mis = 0;

for i = 1:length(data(:,1))
    if (data(i,3) ~= nearestPrototype(data(i, :), protoList))
        mis = mis + 1;
    end        
end
    

end

