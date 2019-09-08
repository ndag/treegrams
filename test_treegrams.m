
n = 50
D = rand(n,n);
D = D .*(1-eye(n)/1.1);
figure
Q = MinMaxPow(D);
Qsym =  max(Q,Q');
my_dendrogram(Qsym)
