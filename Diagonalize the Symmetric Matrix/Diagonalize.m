clc
A = input('Enter the square matrix A: ');
n=length(A);
[X,D] = eig(A);
disp('The Eigenvalue of A are')
disp(diag(real(D)))
disp('The eigen vectors for the corresponding eigenvalues')
disp(X)
option = input('If you want to diagonalize by similarity tranformation then press 1 or any other key if you want to diagonalize orthogonal matrix. ')
if(option==1)
P=X;
disp('Modal Matrix associated with A is ')
D=inv(P)*A*P
disp('D = inv(P)*A*P')
disp('Thus A is reduced to the diagonal matrix D through P by similarity transformation')
else
for i=1:n
x = X(:,i);
u(:,i)=x/norm(x)
end
disp('Orthogonal matrix associated with A is the matrix')
P1 = u(:,1:n)
disp('D=transpose(P1)*A*P1')
D = (P1)'*A*(P1)
disp('Thus A is reduced to the diagonal matrix D through P1by orthogonal tranformation.')
end
