function nSolution=nQueens(checkArray,nQueen,nSolution)
if n==8
    nSolution=nSolution+1;
    %print array
    return;
end

for iLine=1:8
    if isSafe(iLine,nQueen,checkArray)
        checkArray(iLine,nQueen)=1;
        nSolution=nQueens(checkArray,nQueen+1,nSolution);
    else
        
    end
end

if nQueen==9
    disp('Problem end!');
    return;
else
    
    

end


end

%%
% a=[0 0 1 0;1 0 0 0;0 0 0 0;0 1 0 0];
% isSafe(3,4,a)

%%
function safePlace=isSafe(iLine,iCol,checkArray)
safePlace=true;
if sum(checkArray(iLine,:))
    safePlace=false;
    return;
end

if sum(checkArray(:,iCol))
    safePlace=false;
    return;
end

% 右下斜对角线
if sum(checkArray(sub2ind(size(checkArray),iLine,iCol):9:end))
    safePlace=false;
    return;
end

%右上斜对角线
if sum(checkArray(sub2ind(size(checkArray),iLine,iCol):7:end))
    safePlace=false;
    return;
end


end

%%
% function  checkArray=getArray(checkArray,i,j)
% checkArray(i,:)=0;
% checkArray(:,j)=0;
% [tmpi,tmpj]=[i,j]-min([i,j])+1;
% 
% 
% 
% end






















