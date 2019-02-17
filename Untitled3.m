function zoeTest2()
%√∞≈›≈≈–ÚÀ„∑®
a=[3 5 2 4 1];
for i=1:length(a)-1
for j=i+1:length(a)
if(a(i)<a(j))
t=a(i);
a(i)=a(j);
a(j)=t;
end
end
end
disp("a")