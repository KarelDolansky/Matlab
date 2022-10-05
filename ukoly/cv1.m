clear;
clc;
%1
a=1:50;
%2
b=1:0.2:10;
%3
A= ones(3);
B= zeros(size(A));
D= ones(size(A));
%4
M=[A,B,D];
%5
C=[1,-1,1;1,-1,0;-1,0,1];
%6
B1=inv(C);
%7
C*B1;
C.*B1;
%8
C*M;
%9
C(:,2)=rand(size(C,1),1);
%10
C(:,1)=[-1,2,3];
%11
C1=C(1,2:3);
%12
disp(C)
disp(C)
for i=1:size(C,1)
    for j=1:size(C,2)
        if(C(i,j)<0)
            C(i,j)=rand;
        else
            C(i,j)=1;
        end
    end
end
disp(C)
%jednodusi to nad timhle
%C=[2,-2,-2;2,2,2;-2,2,2];
%C(C>=0)=1;
%C(C<0)=rand(size(C(C<0),1),1);
%disp(C)
