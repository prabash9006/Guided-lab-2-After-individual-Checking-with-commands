function [Q, R] = gs_factor(A)
% [Q, R] = gs_factor(A)
% Computes the QR factorization of a matrix A using
% the classical Gram-Schmidt process.
%
% Input:
%   A - an m x n matrix
%
% Output:
%   Q - an m x n matrix with orthonormal columns where possible
%   R - an n x n upper triangular matrix
%
% Prabash Premarathna
% Date: (03/07/2026)

[m,n] = size(A);
Q = zeros(m,n);
R = zeros(n,n);

for k = 1:n
    x = A(:,k);
    
    for l = 1:k-1
        R(l,k) = Q(:,l)' * x;
        x = x - R(l,k) * Q(:,l);
    end
    
    R(k,k) = norm(x);
    
    if R(k,k) > 0
        Q(:,k) = x / R(k,k);
    else
        Q(:,k) = zeros(m,1);
    end
end

end