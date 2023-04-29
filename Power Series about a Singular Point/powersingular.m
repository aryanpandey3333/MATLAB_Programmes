clear all
clc
syms x r c_0 d_0 c_1 c_2 c_3 c_4 c_5
disp('Note : input the coefficients of the DE as constant or function of x')
p1x=input('The coefficient of D2y :');
p2x=input('The coefficient of Dy  :');
p3x=input('The coefficient of y   :');
c=[c_0, c_1, c_2, c_3, c_4, c_5];
y1=sum(c.*(x).^(0:5));
Px=p2x/p1x; Qx=p3x/p1x;
px=x*Px; qx=x^2*Qx;
a_0=subs(px,x,0);
b_0=subs(qx,x,0);
r=solve(r*(r-1)+a_0*r+b_0);
for i=1:2
y=expand(y1*x^r(i));
dy=diff(y);
d2y=diff(dy);
ode1=p1x*d2y+p2x*dy+p3x*y;
ode=ode1/x^r(i); 
end
ps=collect(simplify(ode),x);
d=coeffs(ps,x);
[c_1,c_2,c_3,c_4,c_5]=solve(d(1),d(2),d(3),d(4),d(5),'c_1,c_2,c_3,c_4,c_5');
z(i)=vpa(subs(y),3);
disp('Linearly independent solutions are :')
disp(z(1));
disp(z(2));