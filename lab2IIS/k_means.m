function [ output_args ] = k_means( inputMatrix, kValue)
% Given a 2 dimension (Nx2) matrix and a K value between 2 and 8, performs k-means
% clustering
    close all;
    nPoints = length(inputMatrix);
    lastIterationResult = zeros(1, nPoints);
    nIteration = 1;
    
    % Selecting k random seeds from inputMatrix points (algorithm initialization)
    rng('shuffle');
    inicialSeedsIndex = randi(nPoints, 1, kValue);    
    anchorVector = zeros(kValue,2);
    for i = 1:kValue
        anchorVector(i, 1) = inputMatrix(inicialSeedsIndex(i), 1); 
        anchorVector(i, 2) = inputMatrix(inicialSeedsIndex(i), 2);
    end
    
    nearestAnchorIndex = zeros(1, nPoints);
    while 1 % Because there is no DO WHILE in MATLAB
        % Compute for each point the nearest "anchor" and store on
        % nearestAnchorIndex array
        for i = 1:nPoints
            nearestAnchorIndex(i) = -1;
            nearestAnchorDistance = realmax;
            for j = 1:kValue
                if(euclideanDistance(inputMatrix(i,:),anchorVector(j,:)) < nearestAnchorDistance)
                    nearestAnchorDistance = euclideanDistance(inputMatrix(i,:),anchorVector(j,:));
                    nearestAnchorIndex(i) = j;
                end
            end
        end
        
        % Recompute "anchor" means
        for i = 1:kValue
            anchorVector(i,1) = 0;
            anchorVector(i,2) = 0;
        end        
        nPointsNearAnchorI = zeros(1, kValue);
        for i = 1:nPoints
            nPointsNearAnchorI(nearestAnchorIndex(i)) = nPointsNearAnchorI(nearestAnchorIndex(i)) + 1;
            anchorVector(nearestAnchorIndex(i),1) = anchorVector(nearestAnchorIndex(i),1) + inputMatrix(i,1);
            anchorVector(nearestAnchorIndex(i),2) = anchorVector(nearestAnchorIndex(i),2) + inputMatrix(i,2);
        end 
        for i = 1:kValue 
            anchorVector(i,1) = anchorVector(i,1)/nPointsNearAnchorI(i);
            anchorVector(i,2) = anchorVector(i,2)/nPointsNearAnchorI(i);
        end
        
        % Checks if the last two iterations resulted in the same clusters,
        % if they do, the algorithm stops
        if isequal(nearestAnchorIndex, lastIterationResult)
            break;
        else
            lastIterationResult = nearestAnchorIndex;
            plotCurrentClusters(inputMatrix, nearestAnchorIndex, nIteration, anchorVector);
            nIteration = nIteration + 1;
        end
    end
end

