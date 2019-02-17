Num=40;
trialError = 0.2;
myQueue = initQueue(Num);
iTry=0;
while 1
    [myQueue,iTry]=DeQueue(myQueue);
    if ~iTry
        disp('Successfully Ended!');
        break;
    else
        disp(num2str(iTry));
    end
    if rand(1)>=trialError %correct
        continue;
    else %wrong
        [myQueue, successOrfailed]=EnQueue(myQueue,iTry);
        if ~successOrfailed
            disp('Too many failed trials!');
            break;
        end
        %myQueue=modQueue(myQueue);
    end
    
end



function myQueue = initQueue(Num)
myQueue.num = [(1:Num)'; zeros(fix(Num*0.5),1)];
myQueue.rear = length(myQueue.num);
myQueue.head = 1;
myQueue.lastTry = Num+1;
end
function isEmpty = QueueEmpty(myQueue)
isEmpty = (myQueue.head == myQueue.front);
end
function isFull = QueueFull(myQueue)
isFull = (myQueue.lastTry == myQueue.rear);
end

function [myQueue,successOrfailed]= EnQueue(myQueue,temp)
if QueueFull(myQueue)
    successOrfailed=false;
else
    myQueue.num(myQueue.lastTry) = temp;
    myQueue.lastTry = myQueue.lastTry + 1;
    successOrfailed=true;
end
end





function [myQueue, iTry]= DeQueue(myQueue)
iTry=myQueue.num(myQueue.head);
myQueue.head=myQueue.head+1;
end
function isModified = isModQueue(myQueue)
isModified = (myQueue.num(myQueue.head) == -1);
end
function myQueue = modQueue(myQueue)
myQueue.num(myQueue.point,1) = myQueue.num(myQueue.head,1);
myQueue.num(myQueue.point,2) = rand;
myQueue.point = myQueue.point + 1;
myQueue.head = myQueue.head + 1;
myQueue.rear = myQueue.rear - 1;
end
