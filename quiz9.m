%% Root Locus Analysis
% G(s) = K(s-4)(s-7) / [s(s+2)(s+5)(s+12)]

clear; clc; close all;

%% Define the transfer function (with K=1)
zeros_G = [4, 7];           % zeros at s = 4, 7
poles_G = [0, -2, -5, -12]; % poles at s = 0, -2, -5, -12

num = poly(zeros_G);  % numerator polynomial
den = poly(poles_G);  % denominator polynomial

G = tf(num, den);

%% Part (a): Asymptote Intercept (sigma_a) and Angles (theta_a)

n = length(poles_G);  % number of poles = 4
m = length(zeros_G);  % number of zeros = 2
q = n - m;            % number of asymptotes = 2

fprintf('=== Part (a): Asymptotes ===\n');
fprintf('Number of poles (n) = %d\n', n);
fprintf('Number of zeros (m) = %d\n', m);
fprintf('Number of asymptotes (q = n-m) = %d\n\n', q);

% Asymptote intercept on real axis
sigma_a = (sum(poles_G) - sum(zeros_G)) / q;
fprintf('Sum of poles = %.4f\n', sum(poles_G));
fprintf('Sum of zeros = %.4f\n', sum(zeros_G));
fprintf('sigma_a = (sum_poles - sum_zeros) / (n - m)\n');
fprintf('sigma_a = (%.4f - %.4f) / %d = %.4f\n\n', ...
        sum(poles_G), sum(zeros_G), q, sigma_a);

% Asymptote angles
fprintf('Asymptote angles theta_a:\n');
for k = 0:(q-1)
    theta = (180 * (2*k + 1)) / q;
    fprintf('  k=%d: theta_a = (2*%d+1)*180 / %d = %.1f degrees\n', k, k, q, theta);
end

%% Part (b): Root Locus Plot

figure;
rlocus(G);
title('Root Locus of G(s) = K(s-4)(s-7) / [s(s+2)(s+5)(s+12)]');
xlabel('Real Axis');
ylabel('Imaginary Axis');
grid on;

% Mark asymptote intercept
hold on;
xline(sigma_a, 'r--', sprintf('\\sigma_a = %.2f', sigma_a), ...
      'LabelVerticalAlignment', 'bottom');

% Check stability: any poles in RHP for K > 0?
fprintf('\n=== Part (b): Stability ===\n');
fprintf('Zeros in RHP (s=4, s=7) => branches go to RHP.\n');
fprintf('System is NOT stable for all K >= 0.\n');