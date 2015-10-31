function [ output_args ] = plotPrototypes( protoList )

l = length(protoList(:,1));
hold on;

% Not best way to do it, but we couldn't get other methods to work
scatter(protoList(1,1),protoList(1,2), 'd','MarkerEdgeColor','k',...
'MarkerFaceColor','r', 'LineWidth',1.5)
if (l == 1) return; end
scatter(protoList(2,1),protoList(2,2), 'd','MarkerEdgeColor','k',...
'MarkerFaceColor','b', 'LineWidth',1.5)
if (l == 2) return; end
scatter(protoList(3,1),protoList(3,2), 'd','MarkerEdgeColor','k',...
'MarkerFaceColor','r', 'LineWidth',1.5)
if (l == 3) return; end
scatter(protoList(4,1),protoList(4,2), 'd','MarkerEdgeColor','k',...
'MarkerFaceColor','b', 'LineWidth',1.5)


end
