y=[107 75.8 66.6 70.4 59.5 105 ...
    94.6 81.5 88 96.4 29.2 46 107.2 58.9 97.9 79.7]';
x0=ones(size(y,1),1);
x1=[1 9 9 1 9 1 1 1 1 9 9 9 1 9 1 9]';
x2=[1 3 3 -1 -3 -1 1 -1 1 3 -3 -3 1 -3 -1 3]';
x3=[1 -1 -3 -3 3 3 -1 -1 -3 3 -3 -1 3 1 1 1]';
% size(y)
% size(x1)
% size(x2)
% size(x3)
x=[x0 x1 x2 x3];
b=inv(x'*x)*x'*y
xtx=(x'*x)
xty=x'*y
yty=y'*y
sumy=sum(y)
n=size(y,1)
k=size(b,1)
ssr=b'*xty-(sumy^2/n)
b'*xty
sse=yty-b'*xty
tot=yty-(sumy^2/n)
dfr=k-1
dfe=n-dfr-1

anovaTable=[ssr dfr;
            sse dfe;
            tot n-1]
        
ms=[ssr/dfr;
    sse/dfe]
        
Fobs=ms(1,1)/ms(2,1)
inv(xtx)
% 
% sigmaCap=abs(ms(2,1)-ms(1,1))*inv(xtx);
% obsT=zeros(4,1);
% for i=1:dfr+1
%    tob=b(i)/sqrt(sigmaCap(i,i)) ;
%    obsT(i,1)=tob;
% end
% obsT
