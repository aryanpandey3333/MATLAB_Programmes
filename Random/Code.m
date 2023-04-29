clear all
clc
syms x c_0 c_1 c_2 c_3 c_4 c_5 c_6
p0=1;
p1=-2*x;
p2=x^2-2;
c = [c_0,c_1,c_2,c_3,c_4,c_5,c_6];
y = sum(c.*(x).^(0:6));
dy=diff(y);
d2y = diff(dy);
ode=p0*d2y+p1*dy+p2*y;
ps=collect(ode,x);
d = coeffs(ps,x);
[c_2,c_3,c_4,c_5,c_6] = solve(d(1),d(2),d(3),d(4),d(5),c_2,c_3,c_4,c_5,c_6);
z = subs(y);
disp(' The general solution of the given ode around x=0 is given by: ')
disp(z)
y0=1;
y0d=1;
zz = subs(z,[c_0,c_1],[y0,y0d]);
disp(' The Particular solution of the given ode around is given by: ')
disp(zz)
ezplot(zz,[-4 4])