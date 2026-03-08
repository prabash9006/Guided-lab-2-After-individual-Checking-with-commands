
function Q = gram_schmidt(X)
% Q = gram_schmidt(X)
% This function uses the Gram-Schmidt process to produce an orthonormal 
% set of vectors Q that span the same space as the columns of matrix X.
% Input: X - A matrix where vectors are stored as columns.
% Output: Q - A matrix where orthonormal vectors are stored as columns.
%
% Name: Prabash
% Date: 02.15.2026

[m, nx] = size(X);
Q = [];
nq = 0;

for k = 1:nx
    xk = X(:, k); % Extract the k-th column vector [cite: 89]
    for l = 1:nq
        r_lk = Q(:, l)' * xk; % Compute projection [cite: 71, 89]
        xk = xk - r_lk * Q(:, l); % Subtract projection to get orthogonal vector [cite: 72]
    end
    r_kk = norm(xk); % Compute the L2 norm [cite: 73, 80]
    if r_kk > 0 % Only keep if the vector is not zero [cite: 74, 146]
        nq = nq + 1;
        Q(:, nq) = xk / r_kk; % Normalize and add to set Q [cite: 77]
    end
end