%%极大代数，给出反馈矩阵K计算M,N矩阵
function [M,N]=MP_KT2MN(K,T)
  [A,B,C]=T2ABCmatrix(T);
  M=MP_MaTimesMb(C,MP_MaTimesMb(MP_Mastar(A),MP_MaTimesMb(B,K)));
  N=MP_MaTimesMb(MP_Mastar(A),MP_MaTimesMb(B,MP_MaTimesMb(K,C)));

  
##>> T=[0 1 5;3 2 3;4 3 0]
##T =
##
##   0   1   5
##   3   2   3
##   4   3   0
##
##>> K=-inf*ones(6,6);
##>> for i=1:6
##K(i,i)=0;
##endfor
##>> [M,N]=MP_KT2MN(K,T)
##M =
##
##     7  -Inf  -Inf     7     7     4
##    10     6  -Inf    10    10     7
##    10     9     8    10    10     7
##     6     6     5     6  -Inf  -Inf
##     9     9     8     9     8  -Inf
##    10     9     8    10    10     7
##
##N =
##
##  -Inf  -Inf     5  -Inf  -Inf  -Inf     4  -Inf  -Inf
##  -Inf  -Inf     5  -Inf  -Inf  -Inf     4     3  -Inf
##  -Inf  -Inf     6  -Inf  -Inf  -Inf     5     4     0
##  -Inf  -Inf     5  -Inf  -Inf     3     4  -Inf  -Inf
##  -Inf  -Inf     8  -Inf  -Inf     6     7     4  -Inf
##  -Inf  -Inf    11  -Inf  -Inf     8    10     9     5
##  -Inf  -Inf     8  -Inf  -Inf     6     7  -Inf     0
##  -Inf  -Inf    12  -Inf  -Inf    10    11     6     4
##  -Inf  -Inf    15  -Inf  -Inf    13    14    12     8
