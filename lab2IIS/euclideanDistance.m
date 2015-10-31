function [ d ] = euclideanDistance( A, B)
% Computes euclidian distance between 2 float points coordinates
    d = sqrt(sum((A-B).^2));
end
