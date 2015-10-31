function [ ret ] = normalizedHammingDistance( row1, row2)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
a = xor(row1, row2);
ret = sum(a)/length(row1);
end