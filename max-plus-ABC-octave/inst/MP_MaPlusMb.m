%%矩阵A(m*m)极大代数+矩阵B(M*m)=MaplusMb(m*m)
function MaPlusMb=MP_MaPlusMb(a,b)
  [m,r1]=size(a);
  [r2,n]=size(b);
  if ((r1==r2) ^(m==n) ^(m=r1))
                for i=1:m
	for j=1:m
	if(a(i,j)<b(i,j))
	a(i,j)=b(i,j);
	endif
	endfor
	endfor
  elseif
    disp('dimension of a should equal to dimension of b,and both square matrix.');
  endif
endfunction






















