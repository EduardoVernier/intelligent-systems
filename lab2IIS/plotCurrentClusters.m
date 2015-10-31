function plotCurrentClusters( inputMatrix, nearestAnchorIndex, nIteration, anchorVector )
    colorArray = {'bo', 'ro', 'co', 'go', 'yo', 'bs', 'mo', 'rs'};
    figure;
    for i = 1:length(inputMatrix)
        plot(inputMatrix(i,1),inputMatrix(i,2),colorArray{nearestAnchorIndex(i)});
        title(['Iteration #' num2str(nIteration)])
        hold on
    end
    for i = 1:length(anchorVector)
        plot(anchorVector(i, 1),anchorVector(i,2), 'kd','MarkerSize',10,'MarkerEdgeColor','k', 'MarkerFaceColor','k');
    end    
    print(['Iteration #' num2str(nIteration)],'-dpng')

end

