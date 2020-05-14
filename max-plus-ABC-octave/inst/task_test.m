%% test 2


%%保存变量文件>> save -hdf5 save_data_test.h5
%%导出变量文件>> load  save_data_test.h5
clear all
clc

tic 

T=[25 60 40 55 25 15 10;
   35 45 45 60 25 15 15;
   45 70 70 80 25 20 15;
   40 65 60 70 25 20 15;
   55 80 80 90 25 25 20;
   25 70 45 50 25 15 15]


   
[A,B,C]=T2ABCmatrix(T)
A
B
C

K=-inf*ones(13,13);
for i=1:13
K(i,i)=0;
endfor


K

[M,N]=MP_KT2MN(K,T)

M


N


Nlambda=MP_MaValue(N);


Nlambda


Mlambda=MP_MaValue(M);

Mlambda


U1=[0 0 0 0 0 0 0 0 0 0 0 0 0]'
y1=MP_MaTimesMb(MP_MaTimesMb(C,MP_MaTimesMb(MP_Mastar(A),B)),U1);disp(y1')

y2=MP_MaTimesMb(MP_AKpower(M,1),y1);disp(y2')
y3=MP_MaTimesMb(MP_AKpower(M,2),y1);disp(y3')
y4=MP_MaTimesMb(MP_AKpower(M,3),y1);disp(y4')
y5=MP_MaTimesMb(MP_AKpower(M,4),y1);disp(y5')
y6=MP_MaTimesMb(MP_AKpower(M,5),y1);disp(y6')
y7=MP_MaTimesMb(MP_AKpower(M,6),y1);disp(y7')
y8=MP_MaTimesMb(MP_AKpower(M,7),y1);disp(y8')


table=[y1';y2';y3';y4';y5';y6';y7';y8']';disp(table)
increase=[y1';y2'-y1';y3'-y2';y4'-y3';y5'-y4';y6'-y5';y7'-y6';y8'-y7']';disp(increase)


toc

save -hdf5 save_data_test.h5


%%%

##Elapsed time is 2800 seconds.
##
##T =
##
##   25   60   40   55   25   15   10
##   35   45   45   60   25   15   15
##   45   70   70   80   25   20   15
##   40   65   60   70   25   20   15
##   55   80   80   90   25   25   20
##   25   70   45   50   25   15   15
##
##A =
##
## Columns 1 through 25:
##
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf    60  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf    40  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf    55  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf    60  -Inf  -Inf  -Inf  -Inf  -Inf    35  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf    40  -Inf  -Inf  -Inf  -Inf  -Inf    45  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf    55  -Inf  -Inf  -Inf  -Inf  -Inf    45  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf    60  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    10  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    35  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    45  -Inf  -Inf  -Inf  -Inf  -Inf    45  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    45  -Inf  -Inf  -Inf  -Inf  -Inf    70  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    60  -Inf  -Inf  -Inf  -Inf  -Inf    70  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf    80  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf  -Inf    20  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    45  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    70  -Inf  -Inf  -Inf  -Inf  -Inf    40  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    70  -Inf  -Inf  -Inf  -Inf  -Inf    65  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    80  -Inf  -Inf  -Inf  -Inf  -Inf    60  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf    70
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    20  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    40  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    65  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    60  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    70
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##
## Columns 26 through 42:
##
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf    20  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf    55  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf    80  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf    80  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##    25  -Inf  -Inf  -Inf  -Inf  -Inf    90  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf    20  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf    55  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf    80  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf    80  -Inf  -Inf  -Inf  -Inf  -Inf    70  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    90  -Inf  -Inf  -Inf  -Inf  -Inf    45  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf    50  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    20  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf
##
##B =
##
##     0  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf     0  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf     0  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf     0  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf     0  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf     0  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf     0  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf     0  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf     0  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf     0  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf     0  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf     0  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf     0
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##
##C =
##
## Columns 1 through 25:
##
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    10  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##
## Columns 26 through 42:
##
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    70  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    45  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    50  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    15
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    20  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    15
##
##A =
##
## Columns 1 through 25:
##
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf    60  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf    40  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf    55  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf    60  -Inf  -Inf  -Inf  -Inf  -Inf    35  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf    40  -Inf  -Inf  -Inf  -Inf  -Inf    45  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf    55  -Inf  -Inf  -Inf  -Inf  -Inf    45  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf    60  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    10  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    35  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    45  -Inf  -Inf  -Inf  -Inf  -Inf    45  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    45  -Inf  -Inf  -Inf  -Inf  -Inf    70  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    60  -Inf  -Inf  -Inf  -Inf  -Inf    70  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf    80  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf  -Inf    20  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    45  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    70  -Inf  -Inf  -Inf  -Inf  -Inf    40  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    70  -Inf  -Inf  -Inf  -Inf  -Inf    65  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    80  -Inf  -Inf  -Inf  -Inf  -Inf    60  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf    70
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    20  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    40  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    65  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    60  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    70
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##
## Columns 26 through 42:
##
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf    20  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf    55  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf    80  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf    80  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##    25  -Inf  -Inf  -Inf  -Inf  -Inf    90  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf    20  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf    55  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf    80  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf    80  -Inf  -Inf  -Inf  -Inf  -Inf    70  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    90  -Inf  -Inf  -Inf  -Inf  -Inf    45  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf    50  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    20  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf
##
##B =
##
##     0  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf     0  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf     0  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf     0  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf     0  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf     0  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf     0  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf     0  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf     0  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf     0  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf     0  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf     0  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf     0
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##
##C =
##
## Columns 1 through 25:
##
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    10  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##
## Columns 26 through 42:
##
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    70  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    45  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    50  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    15
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    20  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    15
##
##K =
##
##     0  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf     0  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf     0  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf     0  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf     0  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf     0  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf     0  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf     0  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf     0  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf     0  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf     0  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf     0  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf     0
##
##Elapsed time is 0.644798 seconds.
##M =
##
##   225  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   225   200   165   120    80    25
##   415   390  -Inf  -Inf  -Inf  -Inf  -Inf   415   365   330   255   205    95
##   470   445   340  -Inf  -Inf  -Inf  -Inf   470   420   385   310   260   140
##   565   540   445   405  -Inf  -Inf  -Inf   565   515   480   405   355   190
##   590   565   470   430   150  -Inf  -Inf   590   540   505   430   380   215
##   605   580   485   445   165   110  -Inf   605   555   520   445   395   230
##   620   595   500   460   185   130    90   620   570   535   460   410   245
##   230   205   145   105    50    25    10   230  -Inf  -Inf  -Inf  -Inf  -Inf
##   295   270   210   170    80    45    25   295   240  -Inf  -Inf  -Inf  -Inf
##   410   385   295   255   110    65    40   410   360   325  -Inf  -Inf  -Inf
##   480   455   365   325   135    85    55   480   430   395   295  -Inf  -Inf
##   585   560   465   425   170   115    75   585   535   500   425   375  -Inf
##   620   595   500   460   185   130    90   620   570   535   460   410   245
##
##N =
##
## Columns 1 through 25:
##
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    10  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    35  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    95  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   135  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   190  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   215  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   230  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    35  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    95  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    50  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   140  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    95  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   190  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   140  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   250  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   200  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   275  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   225  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   290  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   240  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    70  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    50  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   140  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    95  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    60  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   210  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   165  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   130  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   280  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   235  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   200  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   360  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   315  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   280  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   385  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   340  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   305  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   405  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   360  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   325  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   115  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    95  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    60  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   210  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   165  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   130  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   280  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   235  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   200  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   360  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   315  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   280  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   430  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   385  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   350  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   455  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   410  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   375  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   475  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   430  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   395  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   155  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   135  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   100  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   275  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   230  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   195  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   355  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   310  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   275  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   435  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   390  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   355  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   525  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   480  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   445  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   550  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   505  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   470  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   575  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   530  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   495  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   210  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   190  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   155  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   355  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   310  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   275  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   435  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   390  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   355  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   525  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   480  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   445  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   575  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   530  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   495  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   600  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   555  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   520  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   615  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   570  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   535  -Inf  -Inf  -Inf  -Inf
##
## Columns 26 through 42:
##
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    50    70  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   110   130    45  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   150   170    85    50  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   205   225   140   105    25  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   230   250   165   130    50    15  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   245   265   180   145    65    30    15
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    50  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   110   130  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   155   175    85  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   205   225   140   105  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   265   285   200   165    50  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   290   310   225   190    75    30  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   305   325   240   205    90    45    25
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    85  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   155   175  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   225   245   130  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   295   315   200   165  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   375   395   280   245    75  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   400   420   305   270   100    45  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   420   440   325   290   120    65    40
##  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   130  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf    55  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   225   245  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf   120  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   295   315   200  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf   180  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   375   395   280   245  -Inf  -Inf  -Inf
##  -Inf  -Inf   250  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   445   465   350   315   100  -Inf  -Inf
##  -Inf  -Inf   275  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   470   490   375   340   125    65  -Inf
##  -Inf  -Inf   295  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   490   510   395   360   145    85    55
##  -Inf  -Inf    55  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    20   170  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf   120  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    75   290   310  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf   200  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   155   370   390   260  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf   280  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   235   450   470   350   315  -Inf  -Inf  -Inf
##  -Inf  -Inf   370  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   325   540   560   440   405   125  -Inf  -Inf
##  -Inf  -Inf   395  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   350   565   585   465   430   150    85  -Inf
##  -Inf  -Inf   420  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   375   590   610   490   455   175   110    70
##  -Inf  -Inf   110  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    75   225  -Inf  -Inf  -Inf  -Inf  -Inf    15
##  -Inf  -Inf   200  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   155   370   390  -Inf  -Inf  -Inf  -Inf    40
##  -Inf  -Inf   280  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   235   450   470   340  -Inf  -Inf  -Inf   110
##  -Inf  -Inf   370  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   325   540   560   440   405  -Inf  -Inf   155
##  -Inf  -Inf   420  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   375   590   610   490   455   150  -Inf   205
##  -Inf  -Inf   445  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   400   615   635   515   480   175   110   230
##  -Inf  -Inf   460  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   415   630   650   530   495   195   130   245
##
##M =
##
##   225  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   225   200   165   120    80    25
##   415   390  -Inf  -Inf  -Inf  -Inf  -Inf   415   365   330   255   205    95
##   470   445   340  -Inf  -Inf  -Inf  -Inf   470   420   385   310   260   140
##   565   540   445   405  -Inf  -Inf  -Inf   565   515   480   405   355   190
##   590   565   470   430   150  -Inf  -Inf   590   540   505   430   380   215
##   605   580   485   445   165   110  -Inf   605   555   520   445   395   230
##   620   595   500   460   185   130    90   620   570   535   460   410   245
##   230   205   145   105    50    25    10   230  -Inf  -Inf  -Inf  -Inf  -Inf
##   295   270   210   170    80    45    25   295   240  -Inf  -Inf  -Inf  -Inf
##   410   385   295   255   110    65    40   410   360   325  -Inf  -Inf  -Inf
##   480   455   365   325   135    85    55   480   430   395   295  -Inf  -Inf
##   585   560   465   425   170   115    75   585   535   500   425   375  -Inf
##   620   595   500   460   185   130    90   620   570   535   460   410   245
##
##N =
##
## Columns 1 through 25:
##
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    10  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    35  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    95  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   135  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   190  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   215  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   230  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    35  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    95  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    50  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   140  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    95  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   190  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   140  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   250  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   200  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   275  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   225  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   290  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   240  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    70  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    50  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   140  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    95  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    60  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   210  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   165  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   130  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   280  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   235  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   200  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   360  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   315  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   280  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   385  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   340  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   305  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   405  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   360  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   325  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   115  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    95  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    60  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   210  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   165  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   130  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   280  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   235  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   200  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   360  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   315  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   280  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   430  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   385  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   350  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   455  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   410  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   375  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   475  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   430  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   395  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   155  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   135  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   100  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   275  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   230  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   195  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   355  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   310  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   275  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   435  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   390  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   355  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   525  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   480  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   445  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   550  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   505  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   470  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   575  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   530  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   495  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   210  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   190  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   155  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   355  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   310  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   275  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   435  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   390  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   355  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   525  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   480  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   445  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   575  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   530  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   495  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   600  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   555  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   520  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   615  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   570  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   535  -Inf  -Inf  -Inf  -Inf
##
## Columns 26 through 42:
##
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    50    70  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   110   130    45  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   150   170    85    50  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   205   225   140   105    25  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   230   250   165   130    50    15  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   245   265   180   145    65    30    15
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    50  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   110   130  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   155   175    85  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   205   225   140   105  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   265   285   200   165    50  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   290   310   225   190    75    30  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   305   325   240   205    90    45    25
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    85  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   155   175  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   225   245   130  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   295   315   200   165  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   375   395   280   245    75  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   400   420   305   270   100    45  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   420   440   325   290   120    65    40
##  -Inf  -Inf    15  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   130  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf    55  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   225   245  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf   120  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   295   315   200  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf   180  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   375   395   280   245  -Inf  -Inf  -Inf
##  -Inf  -Inf   250  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   445   465   350   315   100  -Inf  -Inf
##  -Inf  -Inf   275  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   470   490   375   340   125    65  -Inf
##  -Inf  -Inf   295  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   490   510   395   360   145    85    55
##  -Inf  -Inf    55  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    20   170  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf   120  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    75   290   310  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf   200  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   155   370   390   260  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf   280  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   235   450   470   350   315  -Inf  -Inf  -Inf
##  -Inf  -Inf   370  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   325   540   560   440   405   125  -Inf  -Inf
##  -Inf  -Inf   395  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   350   565   585   465   430   150    85  -Inf
##  -Inf  -Inf   420  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   375   590   610   490   455   175   110    70
##  -Inf  -Inf   110  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    75   225  -Inf  -Inf  -Inf  -Inf  -Inf    15
##  -Inf  -Inf   200  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   155   370   390  -Inf  -Inf  -Inf  -Inf    40
##  -Inf  -Inf   280  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   235   450   470   340  -Inf  -Inf  -Inf   110
##  -Inf  -Inf   370  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   325   540   560   440   405  -Inf  -Inf   155
##  -Inf  -Inf   420  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   375   590   610   490   455   150  -Inf   205
##  -Inf  -Inf   445  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   400   615   635   515   480   175   110   230
##  -Inf  -Inf   460  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf   415   630   650   530   495   195   130   245
##
##Matrix is a Reducible matrix.
##Nlambda = -Inf
##H =
##
##   393.85   391.92   384.62   381.54   366.54   364.62   363.46   393.85   390.00   387.31   381.54   377.69   368.08
##   415.00   401.54   394.23   391.15   376.15   374.23   373.08   415.00   399.62   396.92   391.15   387.31   377.69
##   470.00   445.00   398.46   395.38   380.38   378.46   377.31   470.00   420.00   401.15   395.38   391.54   381.92
##   565.00   540.00   445.00   405.00   390.00   388.08   386.92   565.00   515.00   480.00   405.00   401.15   391.54
##   590.00   565.00   470.00   430.00   391.92   390.00   388.85   590.00   540.00   505.00   430.00   403.08   393.46
##   605.00   580.00   485.00   445.00   393.08   391.15   390.00   605.00   555.00   520.00   445.00   404.23   394.62
##   620.00   595.00   500.00   460.00   394.23   392.31   391.15   620.00   570.00   535.00   460.00   410.00   395.77
##   394.23   392.31   385.00   381.92   366.92   365.00   363.85   394.23   390.38   387.69   381.92   378.08   368.46
##   399.23   397.31   390.00   386.92   371.92   370.00   368.85   399.23   395.38   392.69   386.92   383.08   373.46
##   410.00   403.85   396.54   393.46   378.46   376.54   375.38   410.00   401.92   399.23   393.46   389.62   380.00
##   480.00   455.00   401.92   398.85   383.85   381.92   380.77   480.00   430.00   404.62   398.85   395.00   385.38
##   585.00   560.00   465.00   425.00   391.54   389.62   388.46   585.00   535.00   500.00   425.00   402.69   393.08
##   620.00   595.00   500.00   460.00   394.23   392.31   391.15   620.00   570.00   535.00   460.00   410.00   395.77
##
##Mlambda =  405
##Elapsed time is 2039.09 seconds.
##
##
##
##
##演化过程：

##    225    665   1070   1475   1880   2285   2690   3095
##    415    805   1195   1600   2005   2410   2815   3220
##    470    860   1250   1655   2060   2465   2870   3275
##    565    970   1375   1780   2185   2590   2995   3400
##    590    995   1400   1805   2210   2615   3020   3425
##    605   1010   1415   1820   2225   2630   3035   3440
##    620   1025   1430   1835   2240   2645   3050   3455
##    230    670   1075   1480   1885   2290   2695   3100
##    295    735   1140   1545   1950   2355   2760   3165
##    410    820   1225   1630   2035   2440   2845   3250
##    480    890   1295   1700   2105   2510   2915   3320
##    585    990   1395   1800   2205   2610   3015   3420
##    620   1025   1430   1835   2240   2645   3050   3455











































