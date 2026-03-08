

Q1 b

X = [1 1 1;
     0 1 1;
     0 0 1];

Q = gram_schmidt(X)

Q =

     1     0     0
     0     1     0
     0     0     1
%Because the columns are already orthogonal, so Gram–Schmidt simply normalizes them

