clc
clear all
A = input('Enter a 3*3 matrix: ');
[P,D] = eig(A)
t = linspace(0,1,500);
plot3(P(1,1)*t,P(2,1)*t,P(3,1)*t,'blue')
hold on
plot3(D(1,1)*P(1,1)*t,D(1,1)*P(2,1)*t,D(1,1)*P(3,1)*t,'y')
hold on
plot3(P(1,2)*t,P(2,2)*t,P(3,2)*t,'r')
hold on
plot3(D(2,2)*P(1,2)*t,D(2,2)*P(2,2)*t,D(2,2)*P(3,2)*t,'black')
hold on
plot3(P(1,3)*t,P(2,3)*t,P(3,3)*t,'g')
hold on
plot3(D(3,3)*P(1,3)*t,D(3,3)*P(2,3)*t,D(3,3)*P(3,3)*t,'m')
