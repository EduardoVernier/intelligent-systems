function qE = qError( protoList, data )
    qE = 0;
    for j = 1:length(protoList)
        p = protoList(j,:);
        for i = 1:length(data)
            if (j == data(i,3))
                qE = qE + ((p(1)-data(i,1))^2 + (p(2)-data(i,2))^2); % squared euclidian distance
            end
        end
    end
end

