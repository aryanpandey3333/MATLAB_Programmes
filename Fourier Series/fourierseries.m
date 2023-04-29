clc
clear all
syms x
p=input('Enter the period of the function f: '); 
l=p/2; 
pr=input('Enter the partition of [-l,l]or [0,2*l] as a vector: '); 
f=input('Enter the periodic function f as a vector: '); 
M=input('Enter the  number of terms required in Fourier Series: '); 
for n=1:M  
for i=1:length(pr)-1 
    aa_0=int(f(i),x,pr(i),pr(i+1)); 
    aa(i)=int(f(i)*cos(n*pi*x/l),x,pr(i),pr(i+1)); 
    bb(i)=int(f(i)*sin(n*pi*x/l),x,pr(i),pr(i+1)); 
end 
a_0=(1/l)*sum(aa_0); 
a(n)=(1/l)*sum(aa); 
b(n)=(1/l)*sum(bb); 
end 
for n=1:M 
     F(n)=simplify(a(n))*cos(n*pi*x/l)+simplify(b(n))*sin(n*pi*x/l); 
end 
F_S=(a_0/2)+sum(F);
disp('The fourier series of the function f upto M number of terms is given by: ') 
disp(simplify(F_S)) 
h1=ezplot(F_S,[0,2*pi]);% graph of Fourier series of f in [-l l] 
set(h1,'color',[0 1 0]) 
hold on 
ezplot(f(1),[0,2*pi]) % graph of f in the first sub-interval 
%hold on 
%ezplot(f(2),[0,pi]) 
% graph of f in the second sub-interval 
%hold on 
%ezplot(f(3),[1,2]) 
% graph of f in the third sub-interval 
%Change the lines 25-31 according to the given function. 
