function nearestIndex = nearestPrototype( e, pList )
%NEARESTPROTOTYPE Finds nearest prototype using squared euclidian distance
    nearestDist = intmax; 
    nearestIndex = -1;
    for i = 1:length(pList(:,1))
        if ((e(1)-pList(i,1))^2 + (e(2)-pList(i,2))^2 < nearestDist)
            nearestDist = (e(1)-pList(i,1))^2 + (e(2)-pList(i,2))^2;
            nearestIndex = i;
        end
    end
end

