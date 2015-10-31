function a = KNN(coords, k,points,nrofclasses)
count0 = 0;
count1 = 0;
dist(100,2) = 0;
for i=1:100
    dist(i,1) = pdist([coords(1) coords(2);points(i,1) points(i,2)],'euclidean');
    dist(i,2) = i;
end;
dist = sortrows(dist);
for j=1:k
    if(dist(j,2)<=50)
        count0=count0+1;
    else
        count1=count1+1;
    end;
end;
if(count0>count1)
    a=1;
else
    a=2;
end;
end