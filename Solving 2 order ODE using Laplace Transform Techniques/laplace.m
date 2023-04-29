clc
syms s t Y
a = input('Enter the coefficient of second deri of y: ');
b = input('Enter the coefficient of first deri of y: ');
c = input('Enter the coefficient of y: ');
f = input('Enter the RHS function: ');
d = input('enter the value of y(0): ');
e = input('enter the value of Dy(0): ');
F = laplace(f,t,s)
Y1 = s*Y - d
Y2 = s*Y1 - e
Sol = solve(a*Y2 + b*Y1 + c*Y - F, Y)
sol = ilaplace(Sol,s,t)
fplot(sol)