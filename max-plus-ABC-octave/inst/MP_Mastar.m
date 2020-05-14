%%极大代数的方阵星运算实现
function Astr=MP_Mastar(A)
[m,n]=size(A);
if m==n 
    E=-inf*ones(m,m);
    for i=1:m 
      E(i,i)=0;
    endfor
 Astr=E;
 for k=1:m-1
   %disp(k);
 AK=MP_AKpower(A,k);%%A的k次幂，k=1:dim(A)-1
 %AK
    for i=1: m
      for j=1:m 
         if(Astr(i,j)<AK(i,j))
        Astr(i,j)=AK(i,j);
         endif
       endfor
       %Astr
     endfor
 endfor
elseif
  disp('A should be square matrix.');
endif
endfunction


