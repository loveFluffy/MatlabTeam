function num=tmpFunc(a,b)
%���ȼ���С���
num=b(1);
for i=length(b):-1:2
    num=num+prod(a(1:i-1))*(b(i)-1);
end
end