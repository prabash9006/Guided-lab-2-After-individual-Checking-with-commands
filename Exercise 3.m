% Exercise 3(b)
A = [1 1 1;
     1 1 0;
     1 0 0];

[Q,R] = qr(A);

Q
R
Q*R
norm(A - Q*R)

Q =

   -0.5774   -0.4082   -0.7071
   -0.5774   -0.4082    0.7071
   -0.5774    0.8165    0.0000


R =

   -1.7321   -1.1547   -0.5774
         0   -0.8165   -0.4082
         0         0   -0.7071


ans =

    1.0000    1.0000    1.0000
    1.0000    1.0000         0
    1.0000         0    0.0000


ans =

   2.1520e-16


   % Exercise 3(c)
A = rand(100,100);

[Q,R] = qr(A);

norm(Q'*Q - eye(100))      % should be close to 0
norm(Q*Q' - eye(100))      % should be close to 0
norm(R - triu(R))          % should be close to 0
norm(A - Q*R)              % should be close to 0


ans =

   2.2557e-15


ans =

   2.1356e-15


ans =

     0


ans =

   1.5997e-14