% Load all files into an matrice
for i = 1:20
    s = sprintf('person%02d.mat', i);
    P(i,:,:) = load(s);
end

nTests = 1000;
% Random seed
rng('shuffle');

% Set S: From a random person file, pick 2 random rows and compute the
% Hamming distance. Repeat nTests times.
S = zeros(1,nTests);
rP = randi([1 20], 1, nTests);  % Random person list
rRow1 = randi([1 20], 1, nTests);  % Random row list
rRow2 = randi([1 20], 1, nTests);  % Second random row list

for i = 1:nTests    
    row1 = P(rP(i)).iriscode(rRow1(i),:);
    row2 = P(rP(i)).iriscode(rRow2(i),:);    
    S(1,i) = normalizedHammingDistance(row1, row2);
end
histogram(S);

% Set D -> Same as before but with different subjects
D = zeros(1,nTests);
rP = randi([1 20], 1, nTests);
rP2 = randi([1 20], 1, nTests);
rRow1 = randi([1 20], 1, nTests);
rRow2 = randi([1 20], 1, nTests);

for i = 1:nTests    
    % Make sure we are using diffent test subjects
    while rP(i) == rP2(i)
        rP(i) =  randi([1 20], 1, 1);
    end        
    row1 = P(rP(i)).iriscode(rRow1(i),:);
    row2 = P(rP2(i)).iriscode(rRow2(i),:);    
    D(1,i) = normalizedHammingDistance(row1, row2);
end
hold on
hd = histogram(D); 


% Plot gaussian normal distributions
sMean = mean(S);
dMean = mean(D);

sStd = std(S);
dStd = std(D);

x = [-1:.001:1];
norm = normpdf(x,sMean,sStd);
norm = norm .* 30;
hold on;
plot(x,norm);

norm2 = normpdf(x,dMean,dStd);
norm2  = norm2 .* 30;

hold on;
plot(x,norm2);


