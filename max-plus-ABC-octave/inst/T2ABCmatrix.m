%% ���������߿���ϵͳ�Ĳ�������ʵ��
function [A,B,C]=T2ABCmatrix(T)
  [m,n]=size(T);%%�������A:
  A=-inf*ones(m*n);
  for k=0:m-1
    for j=0:m-1
      if(j==k)%%k*n+i=j*n+i�Խ�Ԫ���·�Ԫ���±�k*n+i+1,j*n+i
            for i=1:n-1%%�ԽǷֿ�t_x1-t_x(n-1)
            A(k*n+i+1,j*n+i)=T((k+1),i);
            endfor;
      elseif(1+j==k)
            for i=1:n %%�Խ��ֿ�����·ֿ�t_x1-t_xn
            A(k*n+i,j*n+i)=T(k,i);
            endfor
      %endif%�����11��д��else if���Ϊ����if else���
      endif%if
    endfor
  endfor  

  B=-inf*ones(m*n,m+n); %%�������B:
    for i=1:n 
      B(i,i)=0;
    end 
    for i=1:m 
      B(n*(i-1)+1,n+i)=0;
    end

  C=-inf*ones(m+n,m*n);%%�������C:
    for i=1:n 
      C(i,(m-1)*n+i)=T(m,i);
    end 
    for i=1:m 
      C(n+i,i*n)=T(i,n);
    end

endfunction


##
##>> T=[25 60 40;35 45 45;45 70 70;40 65 60]
##T =
##
##   25   60   40
##   35   45   45
##   45   70   70
##   40   65   60
##
##>> [A,B,C]=openmatrix(T)
##A =
##
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf    60  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##    25  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf    60  -Inf    35  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf    40  -Inf    45  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf    35  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf    45  -Inf    45  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf    45  -Inf    70  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    45  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    70  -Inf    40  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    70  -Inf    65  -Inf
##
##B =
##
##     0  -Inf  -Inf     0  -Inf  -Inf  -Inf
##  -Inf     0  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf     0  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf     0  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf     0  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf     0
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##
##C =
##
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    40  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    65  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    60
##  -Inf  -Inf    40  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf    45  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    70  -Inf  -Inf  -Inf
##  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf  -Inf    60
