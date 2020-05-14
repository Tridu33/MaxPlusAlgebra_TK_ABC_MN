%% 串行生产线开环系统的参数矩阵实现
function [A,B,C]=T2ABCmatrix(T)
  [m,n]=size(T);%%构造矩阵A:
  A=-inf*ones(m*n);
  for k=0:m-1
    for j=0:m-1
      if(j==k)%%k*n+i=j*n+i对角元素下方元素下标k*n+i+1,j*n+i
            for i=1:n-1%%对角分块t_x1-t_x(n-1)
            A(k*n+i+1,j*n+i)=T((k+1),i);
            endfor;
      elseif(1+j==k)
            for i=1:n %%对焦分块的左下分块t_x1-t_xn
            A(k*n+i,j*n+i)=T(k,i);
            endfor
      %endif%如果第11行写成else if理解为两个if else语句
      endif%if
    endfor
  endfor  

  B=-inf*ones(m*n,m+n); %%构造矩阵B:
    for i=1:n 
      B(i,i)=0;
    end 
    for i=1:m 
      B(n*(i-1)+1,n+i)=0;
    end

  C=-inf*ones(m+n,m*n);%%构造矩阵C:
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
