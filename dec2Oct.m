function OctStr=dec2Oct(decNum)
myStack=initStack();

while decNum>=8
    rmnd=mod(decNum,8);
    myStack=pushStack(myStack,rmnd);
    decNum=fix(decNum/8);
end
myStack=pushStack(myStack,decNum);
OctStr='';
while ~ifIsEmpty(myStack)
    [rmnd,myStack]=popStack(myStack);
    OctStr=[OctStr num2str(rmnd)];
end
disp(OctStr);

    function myStack=initStack()
        myStack.rmnd=-1*ones(20,1);
        myStack.top=1;
        myStack.bottom=length(myStack.rmnd);
        myStack.head=myStack.bottom;
    end

    function isEmpty=ifIsEmpty(myStack)
        isEmpty=(myStack.head==myStack.bottom);
    end
    function myStack=pushStack(myStack,rmnd)
        myStack.rmnd(myStack.head)=rmnd;
        myStack.head=myStack.head+1;
        %еп╤о
    end

    function [rmnd,myStack]=popStack(myStack)
        myStack.head=myStack.head-1;
        rmnd=myStack.rmnd(myStack.head);
        % еп╤о
    end

end


% function rmnd=getHead(myStack)
% rmnd=myStack.rmnd(myStack.head);
% end