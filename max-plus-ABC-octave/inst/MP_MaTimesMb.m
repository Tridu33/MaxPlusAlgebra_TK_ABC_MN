%%矩阵A(m*r)极大代数乘矩阵B(r*n)=MaTimesMb(m*n)
function MaTimesMb=MP_MaTimesMb(a,b)
  [m,c1]=size(a);
  [r2,n]=size(b);
  if (c1==r2)
        for i=1:m
              for j=1:n
                    for k=1:c1
                    tmplist(k)=a(i,k)+b(k,j);
                    endfor
                MaTimesMb(i,j)=max(tmplist);
              endfor
        endfor
  elseif
    disp('Horizontal dimension of a should equal to vertical dimensionof b.');
  endif
endfunction






















