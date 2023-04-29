clc
syms t s y(t) Y
a=input('enter the coefficient of second derivative of y: ');
b=input('enter the coefficient of first derivative of y: ');
c=input('enter the coefficient of y: ');
f=input('enter the RHS function: ');
d=input('enter the value of y(0): ');
e=input('enter the value of Dy(0): ');
de=a*diff(sym('y(t)'),2)+b*diff(sym('y(t)'),1)+c*sym('y(t)')-f;
eq1=laplace(de);
eq2=subs(eq1,{laplace(y(t),t,s),y(0),subs(diff(y,1),t,0)},{Y,d,e});
eq3=collect(eq2,Y);
Y=solve(eq3,Y);
y=ilaplace(Y);
disp('The solution of the given DE is: ')
disp(y)