%% test1
  
T=[0 1 5;
3 2 3;
4 3 0]


[A,B,C]=T2ABCmatrix(T)

K=-inf*ones(6,6);
for i=1:6
K(i,i)=0;
endfor


[M,N]=MP_KT2MN(K,T)

testA=-Inf*ones(6,6);testA(2,1)=5;testA(3,1)=5;testA(4,2)=1;testA(4,3)=4;testA(5,3)=4;testA(6,4)=6;testA(6,5)=3;
testA



powerM=[1 2 2;-Inf 2 3;1 -Inf 8]
M1power=MP_AKpower(powerM,1)
M2power=MP_AKpower(powerM,2)
M3power=MP_AKpower(powerM,3)
M4power=MP_AKpower(powerM,4)
