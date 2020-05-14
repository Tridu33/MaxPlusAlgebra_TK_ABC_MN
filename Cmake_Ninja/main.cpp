

/*
********************************************************************
版本声明：
								   ╭════════════════════════╮
								  ║         〖课题设计：〗         ║
		 ╭══════════════════════┤设计时间：2020.4.17 ├══════════════════╮
		║                        ║   设计人：  2016级工业工程专业 邝伟杜Tridu³³     ║                            ║
		║                        ╰═════════════════════════╯                            ║
	  　║                                        ★    关于    Code     ★                                         ║
		║   @计算机配置：windows 10 教育版 64位操作系统 内存：4G CPU ：i3--6100		                            ║
		║   @运行环境：Microsoft Visual C++ 2010				                                                    ║
		║   @设计思路：建立多个子函数，分别用作缓冲区无限的串行生产线建模.				                            ║
  　  　║--------------------------------------------------------------------------------------------------------- ║
	  　║                                        ★      @主要函数       ★                                        ║
  　    ║                              |----------------------------------------------|                            ║
		║				1 极大代数法的乘法MP_RealNumberTimes、2 极大代数系统的矩阵乘法MP_MaTimesMb、				║
		║			    3 极大代数法的加法MP_RealNumberPlus、4 矩阵A的极大代数法k次幂MP_AKpower、			    	║
		║				5 极大代数矩阵的星运算MP_Mastar、6 判断矩阵的可简约性并给出不可简约矩阵的特征值MP_MaValue、 ║
		║				7 计算串行生产线开环系统的参数矩阵ABC:T2ABCmatrix、	                            			║
		║				8 给出反馈矩阵K计算闭环线性模型M,N矩阵MP_KT2MN			                                	║
		║			    主函数控制管理了各个函数结构，其实需要外部使用，			                            	║
		║			    只需要把功能函数extern，写成dll提供给其他函数调用就行在主函数t_main(GUI应用本质就是通过各种 ║
		║  组件调用函数传递参数，其实逻辑类似，这里目标是说明功能GUI应用懒得整了)中，可以以1、2、3、4、5、6、7、8、║
		║  9、10数字键分别可以执行某个功能模块。                                                                   ║
		║				限教学使用交流！请勿用于商业目的。                                                          ║
　      ║----------------------------------------------------------------------------------------------------------║
		║                          欢迎提出您的建议或意见，请发邮件:2055969978@qq.com                              ║
		║----------------------------------------------------------------------------------------------------------║
	　　║                                                                                                          ║
		║                     ╭──────────────────────────────╮                     ║
		╰══════════┤   ★★★★★★  Tridu³³，tridu33@qq.com★★★★★★★     ├══════════╯
							  ╰───────────────────────────────╯


******************************************************************
*/

// MaxPlus_ABC.cpp : 定义控制台应用程序的入口点。
//
#define _CRT_SECURE_NO_WARNINGS ; 
// 包括 SDKDDKVer.h 将定义可用的最高版本的 Windows 平台。

// 如果要为以前的 Windows 平台生成应用程序，请包括 WinSDKVer.h，并将
// WIN32_WINNT 宏设置为要支持的平台，然后再包括 SDKDDKVer.h。
//在此处引用程序需要的其他头文件
//编译程序会先从当前目录中找文件，生成预编译头文件！预编译，是为了提高编译速度！
#include <SDKDDKVer.h>
#include <stdio.h>
#include <tchar.h>//一般是用双引号来引用自己编写的文件，而用尖括号引用系统标准的文件。
#include<stdlib.h>//用于数值转换、内存分配以及具有其他相似任务的函数。free()
#include<conio.h>//Console Input/Output（控制台输入输出）的简写，其中定义了通过控制台进行数据输入和数据输出的函数，主要是一些用户通过按键盘产生的对应操作，比如getch()函数等等。
#include<string.h>//字符串处理
#include<dos.h>//包含了很多BIOS和DOS调用函数
#include<windows.h>//windows
#include <ctype.h>//
#include <iostream>
//Eigen3
#include <regex>
#include <string>
#include <vector>
#include "Eigen/Dense"
#include<fstream>// Save to local file.
#include <sstream> // stringstream, getline

#include <limits.h>//整型无穷大小，INT_MAX表示正无穷，-DBL_MAX表示负无穷
#include <float.h>//double 型的无穷大小，用DBL_MAX表示正无穷，-DBL_MAX表示负无穷(注意不是DBL_MIN)
#include <stdlib.h>


using namespace Eigen;
using namespace std;


//声明函数	
/*
1 极大代数法的乘法MP_RealNumberTimes();
2 极大代数系统的矩阵乘法MP_MaTimesMb();
3 极大代数法的加法MP_RealNumberPlus();
4 矩阵A的极大代数法k次幂MP_AKpower();
5 极大代数矩阵的星运算MP_Mastar();
6 判断矩阵的可简约性并给出不可简约矩阵的特征值MP_MaValue();
7 计算串行生产线开环系统的参数矩阵ABC:T2ABCmatrix();
8 给出反馈矩阵K计算闭环线性模型M,N矩阵MP_KT2MN();

*/


//-------------------------------------------------------------------------
//Octave编程语言省略了繁琐的变量声明和函数调用，在把Octave代码编程实现为C++的过程中，需要增加代码中的Octave库的结构体和函数，Octave代码不能生成exe或者dll,老师建议我用c++造一遍轮子，我觉得也许c++大型数据结构精度计算优化可能会好一些吧。
//根据code，需要定义的结构体和函数(轮子)：
//col collist(k)列向量结构体=一维数组=特殊的二维矩阵
//row rowlist(k)行向量结构体=一维数组=特殊的二维矩阵
//matrix矩阵结构体=二维数据
//泛型函数max
//int result = max(collist)取行向量大值
//max(rowlist)取列向量大值
//max(matrix)取二维数组matrix最大值
//collist diag(matrix H)
//返回值[int m,int n]=函数名size(arg*参数matrix matrix_mn)取大小
//[matrix matrix_ones]=ones(int m,int n);
//......太麻烦了，所以：
//人生苦短，我选Eigen!
MatrixXd readMatrixFromTXT(string dir);
int colT = 0;//T每列数初始0
int rowT = 0;//T每行数量初始值0,变量作用域
MatrixXd readMatrixFromTXT(string dir) {
	string line;
	ifstream in(dir);  //读入文件
	regex pat_regex("[[:digit:]]+");  //匹配原则，这里代表一个或多个数字
	//获取矩阵rowT,colT
	while (getline(in, line)) {  //按行读取
		rowT++;
		colT = 0;//每行列数设置初始0,变量作用域
		for (sregex_iterator it(line.begin(), line.end(), pat_regex), end_it; it != end_it; ++it) {  //表达式匹配，匹配一行中所有满足条件的字符
			colT++;//colT++
		}
	};
	MatrixXd T = MatrixXd::Ones(rowT, colT);//注意行列数从0开始
	//赋值
	int i = 0;//每列 index初始0
	int j = 0;//每行 index初始值0
	ifstream in2(dir);
	while (getline(in2, line)) {  //按行读取
		i++;
		j = 0;
		for (sregex_iterator it(line.begin(), line.end(), pat_regex), end_it; it != end_it; ++it) {  //表达式匹配，匹配一行中所有满足条件的字符
			//cout << it->str() << " ";  //输出匹配成功的数据
			j++;
			T(i - 1, j - 1) = stoi(it->str());  //将数据转化为int型并存入
		}
	};
	in.close(); in2.close();
	return T;
}



/*非常不好用的Octave混合编程
#include <oct.h>
int mystandlone (void)
{
  std::cout << "Hello Octave world!\n";

  int n = 2;
  Matrix a_matrix = Matrix (n, n);

  for (octave_idx_type i = 0; i < n; i++)
    for (octave_idx_type j = 0; j < n; j++)
      a_matrix(i,j) = (i + 1) * 10 + (j + 1);

  std::cout << a_matrix;

  return 0;
} 
*/

//-------------------------------------------------------------------------

void menu();

//菜单MatrixXd

int MP_RealNumberTimes(int a,int b);//1
MatrixXd  MP_MaTimesMb(MatrixXd Ma, MatrixXd Mb);//2
int MP_RealNumberPlus(int a, int b);//3
MatrixXd  MP_AKpower(MatrixXd A, int k);	//4
MatrixXd MP_Mastar(MatrixXd A);//5
double MP_MaValue(MatrixXd A);//6
void T2ABCmatrix(MatrixXd T);//7
MatrixXd T2Amatrix(MatrixXd T);
MatrixXd T2Bmatrix(MatrixXd T);
MatrixXd T2Cmatrix(MatrixXd T);
void MP_KT2MN( MatrixXd K, MatrixXd T);//8

void exit();//9
void showtxt();//10


//-------------------------------------------------------------------------

void menu() {

	system("cls");    //清屏
	system("mode con cols=150 lines=45");
	system("color f0");//改变控制台前景，背景颜色
	system("title MaxPlusTABCMN_Package");
	//system("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t date /T");//显示系统当前日期
	//system("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t time /T");//显示系统当前时间，\t是没有反应的
	printf("\n\n\n\n\n");
	printf("\t\t\t\t ╭════════════════════════════════════════════════╮\n");
	printf("\t\t\t\t            〖课题设计：MaxPlus_ABC〗          \n");
	printf("\t ╭══════════════════════════════════┤  设计时间：2020.4.20 ├════════════════════════════════════════════════╮\n");
	printf("\t\t\t\t               设计人：Tridu33                                                                              \n");
	printf("\t\t\t\t╰ ════════════════════════════════════════════════╯                             \n");
	printf("\t║---------------------------------------------------------------------------------------------------------- ║\n");
	printf("\t║                                        ★    Menu菜单     ★                                              ║\n");
	printf("\t║---------------------------------------------------------------------------------------------------------- ║\n");
	printf("\t║                                    1.极大代数法的乘法MP_RealNumberTimes();                                ║\n");
	printf("\t║                                    2.极大代数系统的矩阵乘法MP_MaTimesMb();                                ║\n");
	printf("\t║                                    3.极大代数法的加法MP_RealNumberPlus();                                 ║\n");
	printf("\t║                                    4.矩阵A的极大代数法k次幂MP_AKpower();                                  ║\n");
	printf("\t║                                    5.极大代数矩阵的星运算MP_Mastar();                                     ║\n");
	printf("\t║                                    6.判断矩阵的可简约性并给出不可简约矩阵的特征值MP_MaValue();            ║\n");
	printf("\t║                                    7.计算串行生产线开环系统的参数矩阵ABC:T2ABCmatrix();                   ║\n");
	printf("\t║                                    8.给出反馈矩阵K计算闭环线性模型M,N矩阵MP_KT2MN();                      ║\n");
	printf("\t║                                    9.exit退出                                                             ║\n");
	printf("\t║                                    10.关于                                                                ║\n");
	printf("\t║\t     ╭───────────────────────────────────────────────────────────────────────────────╮              ║\n");
	printf("\t║═══════════┤ ★★★★★★  欢迎提出您的建议或意见，请发邮件:tridu33@qq.com    ★★★★★★★├══════════════║\n");
	printf("\t║\t     ╰───────────────────────────────────────────────────────────────────────────────╯\n\n\n\n");

	printf("\t\t\t请您选择(1-10):\t");
}


//-------------------------------------------------------------------------MatrixXd
//1 极大代数法的乘法MP_RealNumberTimes();

int MP_RealNumberTimes(int a, int b) {
	printf("\n极大代数法的乘法MP_RealNumberTimes\n");
	return a + b;
};
/*

function c=MP_RealNumberTimes(a,b)
  c=a+b;
endfunction

*/


//-------------------------------------------------------------------------
//2 极大代数系统的矩阵乘法MP_MaTimesMb();
MatrixXd MP_MaTimesMb(MatrixXd Ma, MatrixXd Mb) {
	//printf("极大代数系统的矩阵乘法MP_MaTimesMb\n ");
	MatrixXd MaTimesMb = MatrixXd::Ones(Ma.rows(), Mb.cols()); 
	int m = Ma.rows(); int n = Mb.cols();
	MatrixXd tmplist = MatrixXd::Ones(1,Ma.cols());
	if(Ma.cols()!=Mb.rows())
		cout<<"Horizontal dimension of a should equal to vertical dimension of b."<<endl;
	else
	{
		for (int i = 0; i <  m; i++) {
			for (int j = 0; j <  n; j++) {
				for (int k = 0; k<Ma.cols();k++) {
					if (Ma(i, k) != -DBL_MAX && Mb(k, j) != -DBL_MAX)
						tmplist(0, k) = Ma(i, k) + Mb(k, j);
					//-DBL_MAX会溢出导致结果0，而不会出现保持-DBL_MAX的结果，所以需要自定义，-DBL_MAX遇到什么数字相加都==-DBL_MAX
					else //其中有一个加数是-DBL_MAX,结果不用算数计算,溢出，而应该直接令结果为-DBL_MAX
						tmplist(0, k) = -DBL_MAX;
				}
				double result = -DBL_MAX;
				int length = tmplist.cols();
				for (int i = 0; i < length; i++) {
					if (result < tmplist(0,i)) result = tmplist(0,i);//double 2 int ,lose message
				}
				MaTimesMb(i, j) = result;
				//cout <<"MaTimesMb(i, j):" <<MaTimesMb(i, j) << endl;
			}
		}
	}
	//cout<<MaTimesMb<<endl;
	return MaTimesMb;
};//



/*

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
	disp('Horizontal dimension of a should equal to vertical dimension of b.');
  endif
endfunction

*/


//-------------------------------------------------------------------------
//3 极大代数法的加法MP_RealNumberPlus();
int MP_RealNumberPlus(int a,int b) {
	//printf("\n极大代数法的加法MP_RealNumberPlus\n");
	return max(a,b);
};//


/*
function c=MP_RealNumberPlus(a,b)
  c=max(a,b);
endfunction

矩阵加法其实就是取大操作，后续懒得写出来，直接写了在需要调用的地方
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
*/

//-------------------------------------------------------------------------
//4 矩阵A的极大代数法k次幂MP_AKpower();
	MatrixXd  MP_AKpower(MatrixXd A, int k) {
		//printf("\n矩阵A的极大代数法k次幂MP_AKpower\n ");
		int m = A.rows(); k = k - 1;
		MatrixXd AK= -DBL_MAX*MatrixXd::Ones(m, m);
		for (int i = 0; i < m; i++) {
			AK(i, i) = 0;
		}//AK初始值E矩阵
		//cout << "初始值AK=E\n"<<AK << endl;
		if (A.rows() == A.cols()) {
			for (int j = 0; j <= k ; j++) {
			//cout << "the" << j << "turns:\n" << A << endl;
			AK = MP_MaTimesMb(AK, A);
			//cout << AK << endl;
			}
		}
		else
			printf("Horizontal dimension of A should equal to vertical dimension");
		return AK;
	}//
/*

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
		  AK=MP_MaTimesMb(AK,A);
		  endfor
elseif
  disp('Horizontal dimension of A should equal to vertical dimension');
endif
endfunction

*/

//-------------------------------------------------------------------------
//5 极大代数矩阵的星运算MP_Mastar();


MatrixXd MP_Mastar(MatrixXd A) {
	//printf("\n极大代数矩阵的星运算MP_Mastar\n ");
	int m = A.rows(); int n = A.cols();
	MatrixXd AK = MatrixXd::Ones(m, m);//初始化矩阵大小,最后不取all 1
	MatrixXd E = -DBL_MAX * MatrixXd::Ones(m, m);
	for (int i = 0; i < m; i++) {
		E(i, i) = 0;
	}
	MatrixXd Astr = E;
	if (m == n) {
		for (int k = 1; k < m; k++) {//k不是下标，不许-1
		//cout<<"k="<<k<<endl;
		AK = MP_AKpower(A, k);// A的k次幂，k = 0; < dim(A) - 1,Astr是累计的矩阵结果,AK是每次极大代数加法新进去的矩阵
	//	cout <<"AK="<<AK<< endl;//MaPlusMb矩阵的极大代数加法Astronauts，Astr
				for (int i = 0; i < m; i++) {
					for (int j = 0; j < m; j++) {
						if (Astr(i, j) < AK(i, j))
							Astr(i, j) = AK(i, j);
					}
				}
				//cout<<"Astr="<<Astr<<endl;
		}
	}
	else
		printf("A should be square matrix.");
return Astr;
}
	




/*

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
 AK=MP_AKpower(A,k);%%A的k次幂，k=1:dim(A)-1
	for i=1: m
	  for j=1:m
		if(Astr(i,j)<AK(i,j))
		Astr(i,j)=AK(i,j);
		endif
	  endfor
	endfor
 endfor
elseif
  disp('A should be square matrix.');
endif
endfunction

*/
//------------------------------------------------------------------------
//6 判断矩阵的可简约性并给出不可简约矩阵的特征值MP_MaValue();


double MP_MaValue(MatrixXd A) {
	printf("\n判断矩阵的可简约性并给出不可简约矩阵的特征值MP_MaValue\n "); double Alambda = 0;
	MatrixXd H = A;
	MatrixXd Ak = A;
	int m = A.rows(); int n = A.cols();
	if (m == n) {
		for (int k = 2; k < m; k++) {//不是下标不许-1
			Ak = MP_MaTimesMb(Ak, A);
			for (int i = 0; i < m; i++) {
				for (int j = 0; j < m; j++) {
					if ((H(i, j) < Ak(i, j) / k)) H(i, j) = Ak(i, j) / k;
				}
			}
		}
		int x = 0;
		for (int i = 0; i < m; i++) {
			for (int j = 0; j < m; j++) {
				if (H(i, j) == (-DBL_MAX)) x = 1; break;
			}
		}

		if (x == 0) {
			double maxValue=0;
			for (int j = 0; j < m; j++) {
				if (H(j, j)> maxValue) maxValue = H(j,j) ;//double 2 int lose messgae
				//int j = 0; j < m; j++循环变量-1就不需要下标变动，但是比较麻烦的下标推理的情况下：还是用的下标-1，循环条件不变比较好。
			};
			Alambda = maxValue;
		}
		else {
			cout << "Matrix is a Reducible matrix." << endl;;
			Alambda = -DBL_MAX;
		}
	}
	else{
		cout<<"A should be square matrix."<<endl;
	}
	return Alambda;

}


/*

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
		end
	  end
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
	else
	  disp('Matrix is a Reducible matrix.');
	  Alambda=-inf;
	end
else
   disp('A should be square matrix.');
end
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

*/


//-------------------------------------------------------------------------
//7 计算串行生产线开环系统的参数矩阵ABC:T2ABCmatrix();




void T2ABCmatrix(MatrixXd T) {
	int m = T.rows(); int n = T.cols();
	cout << "A is:\n" << T2Amatrix(T) << endl;
	cout << "\nB is:\n" << T2Bmatrix(T) << endl;
	cout << "\nC is:\n" << T2Cmatrix(T) << endl;

}

MatrixXd T2Amatrix(MatrixXd T) {
	int m = T.rows(); int n = T.cols();

	//构造矩阵A:
	MatrixXd A = -DBL_MAX * MatrixXd::Ones(m*n,m*n);
	for (int k = 0; k<=(m - 1);k++) {
		for (int j = 0; j <= (m - 1);j++) {
			if (j == k) {
				for (int i = 1; i <=( n - 1);i++) {
					A(k * n + i + 1 - 1, j * n + i - 1) = T((k + 1 - 1), i - 1);//最快的方法是只改下标-1，循环条件不变，改前A(k*n+i+1,j*n+i)=T((k+1),i);
				};
			}
			else if(1 + j == k) {
				for (int i = 1; i <= n; i++) {
					A(k * n + i - 1, j * n + i - 1) = T(k - 1, i - 1);//最快的方法是只改下标-1，循环条件不变，改前A(k*n+i,j*n+i)=T(k,i);
				}
			}
			else
				;
		}
	}
	return A;
}

MatrixXd T2Bmatrix(MatrixXd T) {
	int m = T.rows(); int n = T.cols();
	MatrixXd B = -DBL_MAX * MatrixXd::Ones(m * n, m + n); //构造矩阵B:
	for (int i = 1; i <= n; i++) {
		B(i - 1, i - 1) = 0;//-1
	}
	for (int i = 1; i <= m; i++) {
		B(n * (i - 1) + 1 - 1, n + i - 1) = 0;//-1
	}
	return B;
}

MatrixXd T2Cmatrix(MatrixXd T) {
	int m = T.rows(); int n = T.cols();
	MatrixXd C = -DBL_MAX * MatrixXd::Ones(m + n, m * n);//构造矩阵C:
	for (int i = 1; i <= n; i++) {
		C(i - 1, (m - 1) * n + i - 1) = T(m - 1, i - 1);//-1
	}
	for (int i = 1; i <= m; i++) {
		C(n + i - 1, i * n - 1) = T(i - 1, n - 1);
	}
	return C;
}


/*

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


*/
//-------------------------------------------------------------------------
//8 给出反馈矩阵K计算闭环线性模型M,N矩阵MP_KT2MN();



void MP_KT2MN(MatrixXd K, MatrixXd T){
	printf("\n给出反馈矩阵K计算闭环线性模型M,N矩阵MP_KT2MN\n");
	int m = T.rows(); int n = T.cols();
	MatrixXd A = T2Amatrix(T);
	MatrixXd B = T2Bmatrix(T) ;
	MatrixXd C = T2Cmatrix(T) ;
	MatrixXd M = MP_MaTimesMb(C, MP_MaTimesMb(MP_Mastar(A), MP_MaTimesMb(B, K))); cout << "M:\n"<<M << endl;
	MatrixXd N = MP_MaTimesMb(MP_Mastar(A), MP_MaTimesMb(B, MP_MaTimesMb(K, C))); cout << "N:\n" << N << endl;
	
};//


/*

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


*/
//
void exit() {
	printf("\n9.exit \n");
	system("exit");
}

//-------------------------------------------------------------------------
void showtxt() {
	system("cls");
	//system("title 输入0返回主菜单");
	char c;
	//文件输入
	freopen("readme.txt", "r", stdin);
	while (scanf("%c", &c) != EOF) {
		printf("%c", c);
	}
	freopen("CON", "r", stdin); //https://blog.csdn.net/pqleo/article/details/23031337 卡了三天的问题原来在这儿！！！！让流回到控制台?使用freopen后如何将stdout输出流还原回屏幕？
	//break;//步进没问题，但是不知道为什么不能只执行一次，死循环
	printf("\n\n");
	system("pause");
	//exit(1);
}

//-------------------------------------------------------------------------

/*本人精通面向佛系的编程语言，有空交流

					   _oo0oo_
					  o8888888o
					  88" . "88
					  (| -_- |)
					  0\  =  /0
					___/`---'\___
				  .' \\|     |// '.
				 / \\|||  :  |||// \
				/ _||||| -:- |||||- \
			   |   | \\\  -  /// |   |
			   | \_|  ''\---/''  |_/ |
			   \  .-\__  '-'  ___/-. /
			 ___'. .'  /--.--\  `. .'___
		  ."" '<  `.___\_<|>_/___.' >' "".
		 | | :  `- \`.;`\ _ /`;.`/ - ` : | |
		 \  \ `_.   \_ __\ /__ _/   .-` /  /
	 =====`-.____`.___ \_____/___.-`___.-'=====
					   `=---='

	 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

			   佛祖保佑         永无BUG
*/
///////////////////////////////////////////////////////////////////////////////////////////////
void welcomevoice();
void welcomevoice() {
	char uerInputData[2][100] = { "Welcome" };
	int welcome = 0;
	while (1) {
		FILE* pFile = fopen("voice.vbs", "w");//msgbox"自"//CreateObject("SAPI.SpVoice").Speak"能"//CreatObject("SAPI.SpVoice").Speak+"User_Input";
		fprintf(pFile, "CreateObject(\"SAPI.SpVoice\").Speak\"%s\"", uerInputData[welcome++]);//fprintf(pFile,"msgbox(\"%s\")",uerInputData[i++]);//main(1)函数外只能定义全局变量或者对象，而不能执行语句及调用函数。//cmd system
		fclose(pFile);
		system("voice.vbs");//run vbs
		system("del voice.vbs");//del vbs
		if (welcome < 2)
			continue;
		else
			break;
	}
};





int _tmain(int argc, _TCHAR* argv[]) {
	system("chcp 65001");
	MatrixXd Tread = readMatrixFromTXT("T.txt");
	cout << "T is :\n" << Tread << endl;
	cout << "T矩阵有" << rowT << "行" << colT << "列" << endl;
	
	MatrixXd Kread = -DBL_MAX*MatrixXd::Ones(6,6);
	for (int i = 0; i < Kread.rows(); i++) {
		Kread(i, i) = 0;
	}
	cout << "K is :\n" << Kread << endl;
	cout << "K矩阵有" << Kread.rows() << "行" << Kread.cols() << "列" << endl;
//-------------------------------读取矩阵T,获得变量rowT,colT,矩阵K,获得变量rowK,colK---------------------------------------//
	int c;
	char ch[7];
	int i, n;
	system("color 0f");//改变控制台前景，背景颜色
	system("title MaxPlus_ABC");
	welcomevoice();//欢迎使用
	printf("\t\t\t password(111):");
	//---------
	
	for (i = 0; i < 3; i++) {
		//获取ch
		for (n = 0; n < 3; n++) {
			ch[n] = _getch();
			printf("*");
		}
		printf("\n");
		ch[n] = '\0';
		//匹配ch和password
		//if (0 == 0) {
		if (1) {//if (0 == strcmp(ch, "111")) {
			menu();
			//mystandlone();//octave.h call Octave Function
			scanf("%d", &c);
			while (c) {
				switch (c) {
				case 1: cout << MP_RealNumberTimes(1, 2)<< endl; printf("\nPress any key for continue...");  break;
				case 2: {
					int Marow = 2; int Macol = 3;
					MatrixXd Ma = MatrixXd::Random(Marow, Macol); Ma(0, 0) = -DBL_MAX; Ma(0, 1) = -DBL_MAX; Ma(0, 2) = -DBL_MAX;
					int Mbrow = 3; int Mbcol = 2;
					MatrixXd Mb = MatrixXd::Ones(Mbrow,Mbcol); Mb(0, 0) = -DBL_MAX; Mb(1, 0) = -DBL_MAX; Mb(2, 0) = -DBL_MAX;
					cout << Ma << endl;
					cout << Mb << endl;
					cout << MP_MaTimesMb(Ma, Mb) << endl;
					printf("\nPress any key for continue...");
				} break;
				case 3: cout<<MP_RealNumberPlus(1,2)<<endl; printf("\nPress any key for continue..."); break;
				case 4: {
					int tmprow = 3; int tmpcol = 3; 
					MatrixXd tmpE = -DBL_MAX * MatrixXd::Ones(tmprow, tmpcol);
					for (int i = 0; i < tmprow;i++) { tmpE(i, i) = 0; }
					MatrixXd testA = -DBL_MAX*MatrixXd::Ones(tmprow, tmpcol);
					testA << 1, 2, 2,
						-DBL_MAX, 2, 3,
						1, -DBL_MAX, 8;
					cout << "矩阵：\n"<< testA <<endl;
					cout << "矩阵自身矩阵相乘k=0次：\n" << tmpE << endl;
					cout << "矩阵自身矩阵相乘k=1次：\n" << MP_AKpower(testA, 1) << endl;
					cout << "矩阵自身矩阵相乘k=2次：\n" << MP_AKpower(testA, 2) << endl;
					cout << "矩阵自身矩阵相乘k=3次：\n" << MP_AKpower(testA, 3) << endl;
					printf("\nPress any key for continue...");
					break; 
				}
				case 5: {
					int tmprow = 3; int tmpcol = 3;
					MatrixXd tmp = MatrixXd::Ones(tmprow, tmpcol);
					tmp << 0, 1,5,
					3,2, 3,
					4, 3, 0;
					cout << "T的A矩阵：\n" << tmp << endl; 
					cout << "矩阵星运算：\n" << MP_Mastar(tmp) << endl; 
					printf("\nPress any key for continue...");
					break;
				}
				case 6: {
					int tmprow = 3; int tmpcol = 3;
					MatrixXd tmp = MatrixXd::Ones(tmprow, tmpcol);
					tmp << 1, 2, 2,
						-DBL_MAX, 2, 3,
						1, -DBL_MAX, 8;
					cout << "矩阵：\n" << tmp << endl; 
					cout << "A矩阵特征值(8默认值)：" << MP_MaValue(tmp) << endl; printf("\nPress any key for continue..."); break;
				}
				case 7: {
					int tmprow = 3; int tmpcol = 3;
					MatrixXd tmp = MatrixXd::Ones(tmprow, tmpcol);
					tmp << 0, 1,5,
					3,2, 3,
					4, 3, 0;
					T2ABCmatrix(tmp); printf("\nPress any key for continue..."); break;
					}
				case 8: {
					int tmprow = 3; int tmpcol = 3;
					MatrixXd tmp = MatrixXd::Ones(tmprow, tmpcol);
					tmp << 0, 1,5,
					3,2, 3,
					4, 3, 0;
					MP_KT2MN(Kread, tmp); printf("\nPress any key for continue..."); break;
				}
				case 10: showtxt(); break;
				default:  printf("该编号的新功能有待开发中..."); break;
				case 9: return 0;
				};
				_getch();//会等待你按下任意键，再继续执行下面的语句
				menu();
				scanf("%d", &c);//可以换成sscanf_("%d",&n);'scanf': This function or variable may be unsafe. 		
			};
		}

		else {
			printf("密码错误,请重新输入\n");
		}

	}
	if (i == 3) {
		printf("你输入的错误的密码次数达到上限，系统自动退出！请联系管理员！");
		system("pause");
		exit(1);
	}
	return 0;
}





///////////   //                                       //    //
   //        //                                       //   //
  //        ////////     ////////      /////////     //  //        //////
 //        //     //    //     //     //      //    /////        //     
//        //     //    //     //     //      //    //  //          ////
//        //     //    //     //     //      //    //     //            //
//        //     //     ///////////  //      //    //        //   //////
/////////////////////////////////////////////////////////////////////////////////////////////


