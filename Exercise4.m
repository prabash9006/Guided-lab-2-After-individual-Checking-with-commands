n = 7;
A = magic(n);
x = [1:n]';
b = A * x;

[Q,R] = qr(A);
x2 = qr_solve(Q, R, b);

norm(x - x2)


ans =

   7.7565e-15

