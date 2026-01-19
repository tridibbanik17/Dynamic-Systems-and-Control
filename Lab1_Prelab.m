A = 2;         % Example gain (adjust as needed)
tau = 0.5;     % Example time constant (adjust as needed)

s = tf('s');   % Define Laplace variable
G_omega = A / (tau*s + 1);  % Angular velocity transfer function

G_theta = G_omega / s;  % Angular position transfer function

disp('Transfer function for angular position:') %[output:3a8a8709]
G_theta %[output:86dbc4b9]

U0 = 5;  % Step input magnitude
t = 0:0.01:5;  % Time vector

[y, t_out] = step(U0 * G_omega, t);  % Step response
plot(t_out, y)
xlabel('Time (s)')
ylabel('Angular Velocity \omega(t)')
title('Step Response of Angular Velocity')
grid on

omega_ss = y(end);  % Approximate steady-state value
fprintf('Steady-state angular velocity: %.2f rad/s\n', omega_ss); %[output:05f7f766]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline","rightPanelPercent":44.8}
%---
%[output:3a8a8709]
%   data: {"dataType":"text","outputData":{"text":"Transfer function for angular position:\n","truncated":false}}
%---
%[output:86dbc4b9]
%   data: {"dataType":"text","outputData":{"text":"\nG_theta =\n \n       2\n  -----------\n  0.5 s^2 + s\n \nContinuous-time transfer function.\n<a href=\"matlab:disp(char([10 32 32 32 32 32 32 32 78 117 109 101 114 97 116 111 114 58 32 123 91 48 32 48 32 50 93 125 10 32 32 32 32 32 68 101 110 111 109 105 110 97 116 111 114 58 32 123 91 48 46 53 48 48 48 32 49 32 48 93 125 10 32 32 32 32 32 32 32 32 86 97 114 105 97 98 108 101 58 32 39 115 39 10 32 32 32 32 32 32 32 32 32 73 79 68 101 108 97 121 58 32 48 10 32 32 32 32 32 32 73 110 112 117 116 68 101 108 97 121 58 32 48 10 32 32 32 32 32 79 117 116 112 117 116 68 101 108 97 121 58 32 48 10 32 32 32 32 32 32 32 73 110 112 117 116 78 97 109 101 58 32 123 39 39 125 10 32 32 32 32 32 32 32 73 110 112 117 116 85 110 105 116 58 32 123 39 39 125 10 32 32 32 32 32 32 73 110 112 117 116 71 114 111 117 112 58 32 91 49 215 49 32 115 116 114 117 99 116 93 10 32 32 32 32 32 32 79 117 116 112 117 116 78 97 109 101 58 32 123 39 39 125 10 32 32 32 32 32 32 79 117 116 112 117 116 85 110 105 116 58 32 123 39 39 125 10 32 32 32 32 32 79 117 116 112 117 116 71 114 111 117 112 58 32 91 49 215 49 32 115 116 114 117 99 116 93 10 32 32 32 32 32 32 32 32 32 32 32 78 111 116 101 115 58 32 91 48 215 49 32 115 116 114 105 110 103 93 10 32 32 32 32 32 32 32 32 85 115 101 114 68 97 116 97 58 32 91 93 10 32 32 32 32 32 32 32 32 32 32 32 32 78 97 109 101 58 32 39 39 10 32 32 32 32 32 32 32 32 32 32 32 32 32 32 84 115 58 32 48 10 32 32 32 32 32 32 32 32 84 105 109 101 85 110 105 116 58 32 39 115 101 99 111 110 100 115 39 10 32 32 32 32 83 97 109 112 108 105 110 103 71 114 105 100 58 32 91 49 215 49 32 115 116 114 117 99 116 93 10]))\">Model Properties<\/a>\n","truncated":false}}
%---
%[output:05f7f766]
%   data: {"dataType":"text","outputData":{"text":"Steady-state angular velocity: 10.00 rad\/s\n","truncated":false}}
%---
