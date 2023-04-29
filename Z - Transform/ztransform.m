clc 
clear all 
syms n z F f 
a=input('Enter the coefficient of f(n+2):'); 
b=input('Enter the coefficient of f(n+1):'); 
c=input('Enter the coefficient of f(n):'); 
G=input('Enter the RHS function:'); 
d=input('Enter the value of f(0):'); 
e=input('Enter the value of f(1):'); 
eq1=a*sym('f(n+2)')+b*sym('f(n+1)')+c*sym('f(n)')-G; 
eq2=ztrans(eq1); 
eq3=subs(eq2,{'ztrans(f(n), n, z)','f(0)','f(1)'},{F,d,e}); 
eq4=collect(eq3,F); 
F=solve(eq4,F); 
f=simplify(iztrans(F)); 
disp('Solution of the difference equation is given by:') 
disp(f) 
m=0:10; 
f1=subs(f,n,m); 
stem(f1) 