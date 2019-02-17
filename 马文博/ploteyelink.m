load('storage.mat');

% k = find(storage(:,2)>=400&storage(:,2)<=1500);
% m = find(storage(:,3)>=0&storage(:,3)<=1000);
figure;
plot(storage(:,2),storage(:,3));
axis([0 1960 0 1080]);
% axis([400 1960 0 600]);
hold on;
set(gca,'Xtick',[0:100:1960],'Ytick',[0:100:1080]);
set(gca,'ydir','reverse');
set(gca,'xaxislocation','top');
grid on
%  clear; 


%%
figure;
plot(1,1);
a=gca;
set(a,'Position',[0.1,0.1,0.9,0.9]);
axis square
axis([400 1960 0 600]);
