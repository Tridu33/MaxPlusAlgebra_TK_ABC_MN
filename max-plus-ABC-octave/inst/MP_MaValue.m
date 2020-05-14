%判断矩阵的可简约性，并给出不可简约矩阵的特征值
function Alambda=MP_MaValue(A)
H=A;
Ak=A;
[m,n]=size(A);
if m==n 
      for k=2:m 
        Ak=MP_MaTimesMb(Ak,A);
        for i=1:m 
          for j=1:m 
            if (H(i,j)<Ak(i,j)/k)
               H(i,j)=Ak(i,j)/k;
            endif
          endfor
        end
      end
      x=0;
      for i=1:m
        for j=1:m 
          if (H(i,j)==(-inf))
              x=1;break;
          end
        end 
      end 
      if(x==0)
        Alambda=max(diag(H));
        H
      else 
        disp('Matrix is a Reducible matrix.');
        Alambda=-inf;
      end 
else
   disp('A should be square matrix.'); 
endif
##
##>> M
##M =
##
##     7  -Inf  -Inf     7     7     4
##    10     6  -Inf    10    10     7
##    10     9     8    10    10     7
##     6     6     5     6  -Inf  -Inf
##     9     9     8     9     8  -Inf
##    10     9     8    10    10     7
##
##>> N
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
##
##>> Nlambda=MP_MaValue(N)
##Matrix is a Reducible matrix.
##Nlambda = -Inf
##>> Mlambda=MP_MaValue(M)
##Mlambda =  9.5000
##
##