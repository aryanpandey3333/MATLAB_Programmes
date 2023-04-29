clc 
clear all 
syms x  
p=input('Enter the period of the function f: '); 
l=p/2; 
X=input('Enter x-vector in radians: '); 
Y=input('Enter y-vector in radians: '); %Assumed that f(x)=y 
K=length(X); 
M=input('Enter the number of terms required in FS:'); 
a_0=(2/K)*(sum(Y)); 
for n=1:M 
    a(n)=(2/K)*sum(Y.*cos(n*pi*X/l)); 
    b(n)=(2/K)*sum(Y.*sin(n*pi*X/l)); 
end 
for n=1:M 
    F_S(n)=a(n)*cos(n*pi*x/l)+b(n)*sin(n*pi*x/l); 
end 
FS=a_0/2+sum(F_S); 
disp('Fourier series of the given function is given by') 
disp(simplify(FS)) 
ezplot(FS,[-l,l])