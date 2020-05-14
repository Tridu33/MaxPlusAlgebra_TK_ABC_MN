<TeXmacs|1.99.12>

<style|<tuple|generic|chinese|maxima>>

<\body>
  <script-input|octave|default|version|5.1.0><script-output|octave|default|version|5.1.0>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      dir
    <|unfolded-io>
      . \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ MP_MaTimesMb.m
      \ \ \ \ \ \ \ MP_RealNumberTimes.m

      .. \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ MP_MaValue.m
      \ \ \ \ \ \ \ \ \ T2ABCmatrix.m

      MP_AKpower.m \ \ \ \ \ \ \ \ \ MP_Mastar.m

      MP_KT2MN.m \ \ \ \ \ \ \ \ \ \ \ MP_RealNumberPlus.m
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      addpath ("C:\\\\MPL-Code\\\\Octave\\\\max-plus-ABC\\\\inst")
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  - MP_RealNumberTimes.m

  - MP_RealNumberPlus.m

  - MP_MaTimesMb.m\ 

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      MP_RealNumberPlus(1,2)%%Max
    <|unfolded-io>
      ans = \ 2

      <with|mode|math|2>
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      MP_RealNumberTimes(1,2)%%Plus
    <|unfolded-io>
      ans = \ 3

      <with|mode|math|3>
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      Ma=[1 2;3 4];Mb=[5 6 7;8 9 10];disp(MP_MaTimesMb(Ma,Mb));
    <|unfolded-io>
      \ \ \ 10 \ \ 11 \ \ 12

      \ \ \ 12 \ \ 13 \ \ 14
    </unfolded-io>

    <\input>
      \ 
    <|input>
      \;
    </input>
  </session>

  -T2ABCmatrix.m \<#300A\>\<#79BB\>\<#6563\>\<#52A8\>\<#6001\>\<#7CFB\>\<#7EDF\>\<#300B\>P117

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      T=[0 1 5;3 2 3;4 3 0];
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      [A,B,C]=T2ABCmatrix(T)
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(A)
    <|unfolded-io>
      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ \ \ \ 0 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ \ \ \ 1 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ \ \ \ 0 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ \ \ \ 1 \ -Inf \ \ \ \ 3 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ \ \ \ 5 \ -Inf \ \ \ \ 2 \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ \ \ \ 3 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ -Inf \ \ \ \ 2 \ -Inf \ \ \ \ 4 \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ \ \ \ 3 \ -Inf \ \ \ \ 3 \ -Inf
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(B)
    <|unfolded-io>
      \ \ \ \ \ 0 \ -Inf \ -Inf \ \ \ \ 0 \ -Inf \ -Inf

      \ \ -Inf \ \ \ \ 0 \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ \ \ \ 0 \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ -Inf \ \ \ \ 0 \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ \ \ \ 0

      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(C)
    <|unfolded-io>
      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ \ \ \ 4 \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ \ \ \ 3 \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ \ \ \ 0

      \ \ -Inf \ -Inf \ \ \ \ 5 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ \ \ \ 3 \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ \ \ \ 0
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  MP_AKpower.m\ 

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(AK1=MP_AKpower(A,1));
    <|unfolded-io>
      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ \ \ \ 0 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ \ \ \ 1 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ \ \ \ 0 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ \ \ \ 1 \ -Inf \ \ \ \ 3 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ \ \ \ 5 \ -Inf \ \ \ \ 2 \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ \ \ \ 3 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ -Inf \ \ \ \ 2 \ -Inf \ \ \ \ 4 \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ \ \ \ 3 \ -Inf \ \ \ \ 3 \ -Inf
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(AK1=MP_AKpower(A,2));
    <|unfolded-io>
      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ \ \ \ 1 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ \ \ \ 3 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ \ \ \ 6 \ -Inf \ \ \ \ 5 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ \ \ \ 3 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ \ \ \ 3 \ -Inf \ \ \ \ 7 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ \ \ \ 8 \ -Inf \ \ \ \ 5 \ -Inf \ \ \ \ 7 \ -Inf
      \ -Inf
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(AK1=MP_AKpower(A,3));
    <|unfolded-io>
      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ \ \ \ 6 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ \ \ \ 7 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ \ \ \ 9 \ -Inf \ \ \ 10 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf
    </unfolded-io>

    <\input>
      \ 
    <|input>
      \;
    </input>
  </session>

  ......disp(AK1=MP_AKpower(A,k))\<#540C\>\<#7406\>\<#FF0C\>\<#6C42\>\<#89E3\>A\<#7684\>K\<#6B21\>\<#77E9\>\<#9635\>\<#76F8\>\<#4E58\>\<#7ED3\>\<#679C\>\<#3002\>

  - MP_Mastar.m\ 

  \<#6C42\>\<#89E3\>Matrix A\<#7684\>A*\<#661F\>\<#8FD0\>\<#7B97\>

  <\session|octave|default>
    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(MP_Mastar(A))
    <|unfolded-io>
      \ \ \ \ \ 0 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ \ \ \ 0 \ \ \ \ 0 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ \ \ \ 1 \ \ \ \ 1 \ \ \ \ 0 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf
      \ -Inf

      \ \ \ \ \ 0 \ -Inf \ -Inf \ \ \ \ 0 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ \ \ \ 3 \ \ \ \ 1 \ -Inf \ \ \ \ 3 \ \ \ \ 0 \ -Inf \ -Inf \ -Inf
      \ -Inf

      \ \ \ \ \ 6 \ \ \ \ 6 \ \ \ \ 5 \ \ \ \ 5 \ \ \ \ 2 \ \ \ \ 0 \ -Inf
      \ -Inf \ -Inf

      \ \ \ \ \ 3 \ -Inf \ -Inf \ \ \ \ 3 \ -Inf \ -Inf \ \ \ \ 0 \ -Inf
      \ -Inf

      \ \ \ \ \ 7 \ \ \ \ 3 \ -Inf \ \ \ \ 7 \ \ \ \ 2 \ -Inf \ \ \ \ 4
      \ \ \ \ 0 \ -Inf

      \ \ \ \ 10 \ \ \ \ 9 \ \ \ \ 8 \ \ \ 10 \ \ \ \ 5 \ \ \ \ 3 \ \ \ \ 7
      \ \ \ \ 3 \ \ \ \ 0
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(MP_MaTimesMb(MP_MaTimesMb(C,MP_MaTimesMb(MP_Mastar(A),B)),K))
    <|unfolded-io>
      \ \ \ \ \ 7 \ -Inf \ -Inf \ \ \ \ 7 \ \ \ \ 7 \ \ \ \ 4

      \ \ \ \ 10 \ \ \ \ 6 \ -Inf \ \ \ 10 \ \ \ 10 \ \ \ \ 7

      \ \ \ \ 10 \ \ \ \ 9 \ \ \ \ 8 \ \ \ 10 \ \ \ 10 \ \ \ \ 7

      \ \ \ \ \ 6 \ \ \ \ 6 \ \ \ \ 5 \ \ \ \ 6 \ -Inf \ -Inf

      \ \ \ \ \ 9 \ \ \ \ 9 \ \ \ \ 8 \ \ \ \ 9 \ \ \ \ 8 \ -Inf

      \ \ \ \ 10 \ \ \ \ 9 \ \ \ \ 8 \ \ \ 10 \ \ \ 10 \ \ \ \ 7
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \ MP_KT2MN.m

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      T=[0 1 5;3 2 3;4 3 0];K=-inf*ones(6,6);

      for i=1:6

      \ K(i,i)=0;endfor
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      [M,N]=MP_KT2MN(K,T);disp(M)
    <|unfolded-io>
      \ \ \ \ \ 7 \ -Inf \ -Inf \ \ \ \ 7 \ \ \ \ 7 \ \ \ \ 4

      \ \ \ \ 10 \ \ \ \ 6 \ -Inf \ \ \ 10 \ \ \ 10 \ \ \ \ 7

      \ \ \ \ 10 \ \ \ \ 9 \ \ \ \ 8 \ \ \ 10 \ \ \ 10 \ \ \ \ 7

      \ \ \ \ \ 6 \ \ \ \ 6 \ \ \ \ 5 \ \ \ \ 6 \ -Inf \ -Inf

      \ \ \ \ \ 9 \ \ \ \ 9 \ \ \ \ 8 \ \ \ \ 9 \ \ \ \ 8 \ -Inf

      \ \ \ \ 10 \ \ \ \ 9 \ \ \ \ 8 \ \ \ 10 \ \ \ 10 \ \ \ \ 7
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(N)
    <|unfolded-io>
      <\errput>
        'N' undefined near line 1 column 6
      </errput>
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  - MP_MaValue.m

  <\session|octave|default>
    <\input>
      octave\<gtr\>\ 
    <|input>
      K=-inf*ones(6,6);

      for i=1:6

      \ K(i,i)=0;

      endfor
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      [M,N]=MP_KT2MN(K,T)
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      Nlambda=MP_MaValue(N)
    <|unfolded-io>
      Matrix is a Reducible matrix.
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      Mlambda=MP_MaValue(M);disp(Mlambda);
    <|unfolded-io>
      \ 9.5000
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      W=[1 2 2;-Inf 2 3;1 -Inf 8]
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp("W is:");disp(W);[distance,path] = Dijk(W,1,3);disp("distance
      is:");disp(distance);disp("path is:");disp(path);
    <|unfolded-io>
      W is:

      \ \ \ \ \ 1 \ \ \ \ 2 \ \ \ \ 2

      \ \ -Inf \ \ \ \ 2 \ \ \ \ 3

      \ \ \ \ \ 1 \ -Inf \ \ \ \ 8

      distance is:

      \ 2

      path is:

      \ \ \ 1 \ \ 3
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(MP_MaValue(W))
    <|unfolded-io>
      \ 8
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(A=[-Inf -Inf -Inf -Inf -Inf -Inf;5 -Inf -Inf -Inf -Inf -Inf;5 -Inf
      -Inf -Inf -Inf -Inf;-Inf 1 4 -Inf -Inf -Inf;-Inf -Inf 4 -Inf -Inf
      -Inf;-Inf -Inf -Inf 6 3 -Inf])
    <|unfolded-io>
      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ \ \ \ 5 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ \ \ \ 5 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ \ \ \ 1 \ \ \ \ 4 \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ \ \ \ 4 \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ \ \ \ 6 \ \ \ \ 3 \ -Inf
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    <\folded-io>
      octave\<gtr\>\ 
    <|folded-io>
      0
    <|folded-io>
      <with|mode|math|0>
    </folded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(MP_Mastar(A))
    <|unfolded-io>
      \ \ \ \ \ 0 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ \ \ \ 5 \ \ \ \ 0 \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ \ \ \ 5 \ -Inf \ \ \ \ 0 \ -Inf \ -Inf \ -Inf

      \ \ \ \ \ 9 \ \ \ \ 1 \ \ \ \ 4 \ \ \ \ 0 \ -Inf \ -Inf

      \ \ \ \ \ 9 \ -Inf \ \ \ \ 4 \ -Inf \ \ \ \ 0 \ -Inf

      \ \ \ \ 15 \ \ \ \ 7 \ \ \ 10 \ \ \ \ 6 \ \ \ \ 3 \ \ \ \ 0
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      U1=[0 0 0 0 0 0]';
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      y1=MP_MaTimesMb(MP_MaTimesMb(C,MP_MaTimesMb(MP_Mastar(A),B)),U1);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      y2=MP_MaTimesMb(MP_AKpower(M,1),y1);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      y3=MP_MaTimesMb(MP_AKpower(M,2),y1);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      y4=MP_MaTimesMb(MP_AKpower(M,3),y1);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      y5=MP_MaTimesMb(MP_AKpower(M,4),y1);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      y6=MP_MaTimesMb(MP_AKpower(M,5),y1);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      y7=MP_MaTimesMb(MP_AKpower(M,6),y1);
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      y8=MP_MaTimesMb(MP_AKpower(M,7),y1);
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      result=[y1';y2';y3';y4';y5';y6';y7';y8']';disp(result)
    <|unfolded-io>
      \ \ \ \ \ 7 \ \ \ 26 \ \ \ 46 \ \ \ 65 \ \ \ 85 \ \ 104 \ \ 124 \ \ 143

      \ \ \ \ 10 \ \ \ 29 \ \ \ 49 \ \ \ 68 \ \ \ 88 \ \ 107 \ \ 127 \ \ 146

      \ \ \ \ 10 \ \ \ 29 \ \ \ 49 \ \ \ 68 \ \ \ 88 \ \ 107 \ \ 127 \ \ 146

      \ \ \ \ \ 6 \ \ \ 26 \ \ \ 45 \ \ \ 65 \ \ \ 84 \ \ 104 \ \ 123 \ \ 143

      \ \ \ \ \ 9 \ \ \ 29 \ \ \ 48 \ \ \ 68 \ \ \ 87 \ \ 107 \ \ 126 \ \ 146

      \ \ \ \ 10 \ \ \ 29 \ \ \ 49 \ \ \ 68 \ \ \ 88 \ \ 107 \ \ 127 \ \ 146
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      resultgap=[y1';y2'-y1';y3'-y2';y4'-y3';y5'-y4';y6'-y5';y7'-y6';y8'-y7']';disp(resultgap)
    <|unfolded-io>
      \ \ \ \ 7 \ \ 19 \ \ 20 \ \ 19 \ \ 20 \ \ 19 \ \ 20 \ \ 19

      \ \ \ 10 \ \ 19 \ \ 20 \ \ 19 \ \ 20 \ \ 19 \ \ 20 \ \ 19

      \ \ \ 10 \ \ 19 \ \ 20 \ \ 19 \ \ 20 \ \ 19 \ \ 20 \ \ 19

      \ \ \ \ 6 \ \ 20 \ \ 19 \ \ 20 \ \ 19 \ \ 20 \ \ 19 \ \ 20

      \ \ \ \ 9 \ \ 20 \ \ 19 \ \ 20 \ \ 19 \ \ 20 \ \ 19 \ \ 20

      \ \ \ 10 \ \ 19 \ \ 20 \ \ 19 \ \ 20 \ \ 19 \ \ 20 \ \ 19
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      tmp=ones(4,4)
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      MP_AKpower(tmp,2)
    <|unfolded-io>
      <with|mode|math|math-display|true|<matrix|<tformat|<table|<row|<cell|<with|mode|math|2>>|<cell|<with|mode|math|2>>|<cell|<with|mode|math|2>>|<cell|<with|mode|math|2>>>|<row|<cell|<with|mode|math|2>>|<cell|<with|mode|math|2>>|<cell|<with|mode|math|2>>|<cell|<with|mode|math|2>>>|<row|<cell|<with|mode|math|2>>|<cell|<with|mode|math|2>>|<cell|<with|mode|math|2>>|<cell|<with|mode|math|2>>>|<row|<cell|<with|mode|math|2>>|<cell|<with|mode|math|2>>|<cell|<with|mode|math|2>>|<cell|<with|mode|math|2>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(A=[-Inf -Inf -Inf -Inf -Inf -Inf;5 -Inf -Inf -Inf -Inf -Inf;5 -Inf
      -Inf -Inf -Inf -Inf;-Inf 1 4 -Inf -Inf -Inf;-Inf -Inf 4 -Inf -Inf
      -Inf;-Inf -Inf -Inf 6 3 -Inf])
    <|unfolded-io>
      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ \ \ \ 5 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ \ \ \ 5 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ \ \ \ 1 \ \ \ \ 4 \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ \ \ \ 4 \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ \ \ \ 6 \ \ \ \ 3 \ -Inf
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      disp(MP_Mastar(A))
    <|unfolded-io>
      \ \ \ \ \ 0 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ \ \ \ 5 \ \ \ \ 0 \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ \ \ \ 5 \ -Inf \ \ \ \ 0 \ -Inf \ -Inf \ -Inf

      \ \ \ \ \ 9 \ \ \ \ 1 \ \ \ \ 4 \ \ \ \ 0 \ -Inf \ -Inf

      \ \ \ \ \ 9 \ -Inf \ \ \ \ 4 \ -Inf \ \ \ \ 0 \ -Inf

      \ \ \ \ 15 \ \ \ \ 7 \ \ \ 10 \ \ \ \ 6 \ \ \ \ 3 \ \ \ \ 0
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      E=-inf*ones(6,6);

      for i=1:6

      \ E(i,i)=0;

      endfor;disp(E)
    <|unfolded-io>
      \ \ \ \ \ 0 \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ \ \ \ 0 \ -Inf \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ \ \ \ 0 \ -Inf \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ \ \ \ 0 \ -Inf \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ -Inf \ \ \ \ 0 \ -Inf

      \ \ -Inf \ -Inf \ -Inf \ -Inf \ -Inf \ \ \ \ 0
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      MP_AKpower(tmp,2)
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      a=[1 2;3 4];b=[6 6;6 6];
    </input>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      a*1
    <|unfolded-io>
      <with|mode|math|math-display|true|<matrix|<tformat|<table|<row|<cell|<with|mode|math|1>>|<cell|<with|mode|math|2>>>|<row|<cell|<with|mode|math|3>>|<cell|<with|mode|math|4>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      octave\<gtr\>\ 
    <|unfolded-io>
      b*1
    <|unfolded-io>
      <with|mode|math|math-display|true|<matrix|<tformat|<table|<row|<cell|<with|mode|math|6>>|<cell|<with|mode|math|6>>>|<row|<cell|<with|mode|math|6>>|<cell|<with|mode|math|6>>>>>>>
    </unfolded-io>

    <\input>
      octave\<gtr\>\ 
    <|input>
      MP_MaPlusMb(a,b)*1
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>

    <\input>
      octave\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>

  \;

  \;

  \;

  \;

  \;

  \;

  <\with|par-line-sep|0fn>
    <\with|par-line-sep|0fn>
      \;
    </with>
  </with>

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;
</body>

<initial|<\collection>
</collection>>