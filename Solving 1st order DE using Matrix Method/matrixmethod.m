clc
clear all
syms x c1 c2
c=[c1 c2];
A=input('Enter the matrix A in dy/dx=Ay+h: ');
h=input('Enter h as a column vector in dy/dx=Ay+h: ');
n=length(A);
[P,D]=eig(A);
PP=inv(P);
g=PP*h;
for i=1:n
u(i)=c(i)*exp(D(i,i)*x)+(exp(D(i,i)*x)*int(g(i)*exp(-D(i,i)*x)));
end
y=simplify(P*transpose(u));
disp('The solution is given by: ')
disp(y)