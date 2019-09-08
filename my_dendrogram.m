function [hout,T,perm] = dendrogram(Q)
n = length(Q);
f = diag(Q);
lnk = linkage(squareform(Q.*(1-eye(n))),'single');
[H,T,P] = dendrogram(lnk,0);

% now go over line handles and fix heights of leaves
l = length(H);
for k=1:l
Yko = get(H(k),'YData');
Xko = get(H(k),'XData');
I = find(Yko==0);
xI = P(Xko(I));
yI = f(xI);
Ykn = Yko;
for i=1:length(I)
    Ykn(I(i)) = yI(i);
end
%Ykn
set(H(k),'YData',Ykn);
%pause
end
axis([0 n+1 min(Q(:)) max(Q(:))])
