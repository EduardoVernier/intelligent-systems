function [ output_args ] = lqv1( data, K, lr, tMax )
rng('shuffle');

protoList = [];
mis = [];

% Intialization with class mean
for j = 1:K
    for i = 1:2
        temp = data((i-1)*50+1: i*50, :);
        pt = mean(temp);
        protoList = [protoList; pt];
    end
end

% Random initialization of prototypes
% r = randperm(50);
% for i = 1:K
%     protoList = [protoList; data(r(i), :)];
%     protoList = [protoList; data(r(i)*2, :)];
% end

% Plot examples
figure;
colorPoint(data);

for t = 1:tMax
    % Random permutation of examples
    permutedList = randperm(length(data));
    % Plot prototypes after each epoch so we can see how they move
    plotPrototypes(protoList);
    for i = permutedList
        % For each example, find nearest prototype
        nP = nearestPrototype(data(i, :), protoList);

        % If prototype is from the same class, move towards example, else
        % move away
        if (protoList(nP, 3) == data(i,3))
            protoList = moveTowards(data(i, :), protoList, nP, lr);
        else
            protoList = moveTowards(data(i, :), protoList, nP, lr);
        end
    end
    % Count the number of misclassifications over epochs
    mis = [mis misclassif( data, protoList )];
end

figure
plot(1:tMax, mis);
xlabel('Epoch (t)');
ylabel('Number of misclassifications');

end

