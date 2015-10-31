function pList = moveAway( e, pList, pIndex, lr )
%MOVEP moves prototype away example          
    p = pList(pIndex,:);
    if (p(1) < e(1))
        pList(pIndex, 1) = p(1) - (e(1) - p(1))*lr; 
    else
        pList(pIndex, 1) = p(1) + (p(1) - e(1))*lr; 
    end
    
    if (p(2) < e(2))
        pList(pIndex, 2) = p(2) - (e(2) - p(2))*lr; 
    else
        pList(pIndex, 2) = p(2) + (p(2) - e(2))*lr; 
    end

    
end

