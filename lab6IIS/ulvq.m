function QEList = ulvq( data, K, lr, tMax )

% Seed based on clock time
rng('shuffle');

% Attach class identifier
data(:,3) = -1;

% Generate quantization error list
QEList = [];

% Generete prototype list of size K
protoList = [];
r = randperm(length(data));
for i = 1:K
    protoList = [protoList; [data(r(i),1) data(r(i),2)]];
end


for t = 1:tMax
    % Random permutation of examples
    permutedList = randperm(length(data));
    for i = permutedList
        % For each example, find nearest prototype
        nP = nearestPrototype(data(i, :), protoList);
        % Assign it to the prototype (for plotting and calculating
        % quatization error)
        data(i,3) = nP;
        % Move prototype next to example by a given learning rate
        protoList = moveP(data(i, :), protoList, nP, lr);
    end
    % Plots!
    % figure;
    % colorPoint(data);
    % plotPrototypes(protoList);
    QEList = [QEList  qError(protoList, data)];
end

% Plot of quantization error
% figure;
% plot(1:length(QEList), QEList);
end

