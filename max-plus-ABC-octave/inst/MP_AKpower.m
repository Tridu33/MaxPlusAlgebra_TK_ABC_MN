%%MP_AKpower
%矩阵A的极大代数法k次幂
function AK=MP_AKpower(A,k)
  [m,n]=size(A);
if(m==n)
  E=-inf*ones(m,m);
  for i=1:m 
    E(i,i)=0;
  endfor
  AK=E;
  for j=1:k
##  disp("This turns is:")
  AK=MP_MaTimesMb(AK,A);
  endfor
elseif
  disp('Horizontal dimension of A should equal to vertical dimension');
endif
endfunction


