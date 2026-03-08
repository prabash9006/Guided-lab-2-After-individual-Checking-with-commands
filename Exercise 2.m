exercise 2b

A = [1 1 1;
     1 1 0;
     1 0 0];

[Q,R] = gs_factor(A)

Q*R
norm(A - Q*R)

Q =

    0.5774    0.4082    0.7071
    0.5774    0.4082   -0.7071
    0.5774   -0.8165         0


R =

    1.7321    1.1547    0.5774
         0    0.8165    0.4082
         0         0    0.7071


ans =

    1.0000    1.0000    1.0000
    1.0000    1.0000         0
    1.0000         0         0


ans =

   1.1102e-16


exercise 2c

A = rand(100,100);
[Q,R] = gs_factor(A);

norm(Q'*Q - eye(100))
norm(Q*Q' - eye(100))
norm(A - Q*R)
norm(R - triu(R))

ans =

     0