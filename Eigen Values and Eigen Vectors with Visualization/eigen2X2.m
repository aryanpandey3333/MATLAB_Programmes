clc
A = input('Enter a 2*2 matrix: ');
[P,D] = eig(A)
t = linspace(0,1,500);
plot(P(1,1)*t,P(2,1)*t,'blue')
hold on
plot(D(1,1)*P(1,1)*t,D(1,1)*P(2,1)*t,'y')
hold on
plot(P(1,2)*t,P(2,2)*t,'r')
hold on
plot(D(2,2)*P(1,2)*t,D(2,2)*P(2,2)*t,'black')