function x = qr_solve(Q, R, b)
% x = qr_solve(Q, R, b)
% Solves the linear system Ax = b using QR factors.
% It computes y = Q'*b and then performs back substitution on R.
%
% Prabash Premarathna
% 02.15.2026

% Step 1: Form the new right hand side [cite: 168]
y = Q' * b; 

% Step 2: Backwards substitution for the upper triangular system Rx = y [cite: 169, 177, 178]
[n, ~] = size(R);
x = zeros(n, 1);

for i = n:-1:1
    % Subtract the already calculated parts of the solution
    sum_val = R(i, i+1:n) * x(i+1:n);
    x(i) = (y(i) - sum_val) / R(i, i);
end
end