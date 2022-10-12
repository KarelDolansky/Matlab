clear;
clc;
%1
C = randn((round(10 + (40-10).*rand(3,1)))');
size(C)
%2
% S=0;
% tmp = 0;
% for i =1:size(C,1)
%     for j =1:size(C,2)
%         for k =1:size(C,3)
%             tmp = tmp + 1;
%             S = S + C(i,j,k);
%         end
%     end
% end
% S = S/tmp;

S = sum(C,'all')/numel(C)
% for i =1:3
%     S=S/size(C,i);
% end
%3
C = squeeze(C(1,:,:));
%C=[1,2,3;1,2,3;2,2,3];
C=C-(sum(C,2)/size(C,1))
%4
x=(0:0.01:2*pi);
la(x)
