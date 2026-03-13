% Run this in MATLAB command window
num = [0.419];
den = [1, 0, 0];
sys = tf(num, den);

zero_location = 1.33;
C = tf([1, zero_location], [1]);
sys_comp = series(C, sys);

% This will prompt you to click on s = -1.33 + j1.40
[K, poles] = rlocfind(sys_comp)