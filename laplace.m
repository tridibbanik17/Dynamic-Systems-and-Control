%  Find the expression for the transfer ...
% function of the system, Y (s)/X(S)
clear
num = [6 3 1.5 6.2];      % 6s^3 + 3s^2 + 1.5s + 6.2
den = [2 3.5 0 2];        % 2s^3 + 3.5s^2 + 0*s + 2
G = tf(num, den) %[output:82269c30]
step = step(G)      % step response %[output:92658f7e]
pole = pole(G)      % poles %[output:86a408c5]
zero = zero(G)      % zeros %[output:3321c715]

%[text] 
% Laplace
clear
syms s t
y = 5*exp(-3*t)*(cos(7*t)-2*sin(7*t)) %[output:9d4286ce]
lap = laplace(y) %[output:5ff2f1b2]
%[text] 
% partial fraction
clear
syms s
C = (29*(5*s+1)/(s*(s^2+6*s+58))) %[output:7abb7798]
p = partfrac(C) %[output:2c117dc1]
%[text] 
% inverse laplace
clear
syms s t
C = 29*(5*s+1)/(s*(s^2+6*s+58));
c = ilaplace(C, s, t) %[output:613c33a4]
%[text] 
% Time-domain output
syms s t

% Transfer function G1(s)
G1 = (s + 5) / ((s + 1)*(s + 2)^2);

% Step input of magnitude 5
R = 5/s;

% Output Y(s)
Y = G1 * R;

% Inverse Laplace transform to get y(t)
y = ilaplace(Y, s, t);

simplify(y) %[output:45b003fc]
%[text] 
clear 
syms s t
y = exp(-5*t)+t*exp(6*t) %[output:9d7c2d1a]
lap = laplace(y) %[output:65c96a21]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright"}
%---
%[output:82269c30]
%   data: {"dataType":"text","outputData":{"text":"\nG =\n \n  6 s^3 + 3 s^2 + 1.5 s + 6.2\n  ---------------------------\n      2 s^3 + 3.5 s^2 + 2\n \nContinuous-time transfer function.\n<a href=\"matlab:disp(char([10 32 32 32 32 32 32 32 78 117 109 101 114 97 116 111 114 58 32 123 91 54 32 51 32 49 46 53 48 48 48 32 54 46 50 48 48 48 93 125 10 32 32 32 32 32 68 101 110 111 109 105 110 97 116 111 114 58 32 123 91 50 32 51 46 53 48 48 48 32 48 32 50 93 125 10 32 32 32 32 32 32 32 32 86 97 114 105 97 98 108 101 58 32 39 115 39 10 32 32 32 32 32 32 32 32 32 73 79 68 101 108 97 121 58 32 48 10 32 32 32 32 32 32 73 110 112 117 116 68 101 108 97 121 58 32 48 10 32 32 32 32 32 79 117 116 112 117 116 68 101 108 97 121 58 32 48 10 32 32 32 32 32 32 32 73 110 112 117 116 78 97 109 101 58 32 123 39 39 125 10 32 32 32 32 32 32 32 73 110 112 117 116 85 110 105 116 58 32 123 39 39 125 10 32 32 32 32 32 32 73 110 112 117 116 71 114 111 117 112 58 32 91 49 215 49 32 115 116 114 117 99 116 93 10 32 32 32 32 32 32 79 117 116 112 117 116 78 97 109 101 58 32 123 39 39 125 10 32 32 32 32 32 32 79 117 116 112 117 116 85 110 105 116 58 32 123 39 39 125 10 32 32 32 32 32 79 117 116 112 117 116 71 114 111 117 112 58 32 91 49 215 49 32 115 116 114 117 99 116 93 10 32 32 32 32 32 32 32 32 32 32 32 78 111 116 101 115 58 32 91 48 215 49 32 115 116 114 105 110 103 93 10 32 32 32 32 32 32 32 32 85 115 101 114 68 97 116 97 58 32 91 93 10 32 32 32 32 32 32 32 32 32 32 32 32 78 97 109 101 58 32 39 39 10 32 32 32 32 32 32 32 32 32 32 32 32 32 32 84 115 58 32 48 10 32 32 32 32 32 32 32 32 84 105 109 101 85 110 105 116 58 32 39 115 101 99 111 110 100 115 39 10 32 32 32 32 83 97 109 112 108 105 110 103 71 114 105 100 58 32 91 49 215 49 32 115 116 114 117 99 116 93 10]))\">Model Properties<\/a>\n","truncated":false}}
%---
%[output:92658f7e]
%   data: {"dataType":"matrix","outputData":{"columns":1,"exponent":"25","name":"step","rows":9979,"type":"double","value":[["0.0000"],["0.0000"],["0.0000"],["0.0000"],["0.0000"],["0.0000"],["0.0000"],["0.0000"],["0.0000"],["0.0000"],["0.0000"],["0.0000"],["0.0000"],["0.0000"],["0.0000"]]}}
%---
%[output:86a408c5]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"pole","rows":3,"type":"complex","value":[["-2.0000 + 0.0000i"],["0.1250 + 0.6960i"],["0.1250 - 0.6960i"]]}}
%---
%[output:3321c715]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"zero","rows":3,"type":"complex","value":[["-1.1115 + 0.0000i"],["0.3057 + 0.9144i"],["0.3057 - 0.9144i"]]}}
%---
%[output:9d4286ce]
%   data: {"dataType":"symbolic","outputData":{"name":"y","value":"5\\,{\\mathrm{e}}^{-3\\,t} \\,{\\left(\\cos \\left(7\\,t\\right)-2\\,\\sin \\left(7\\,t\\right)\\right)}"}}
%---
%[output:5ff2f1b2]
%   data: {"dataType":"symbolic","outputData":{"name":"lap","value":"\\frac{5\\,{\\left(s+3\\right)}}{{{\\left(s+3\\right)}}^2 +49}-\\frac{70}{{{\\left(s+3\\right)}}^2 +49}"}}
%---
%[output:7abb7798]
%   data: {"dataType":"symbolic","outputData":{"name":"C","value":"\\frac{145\\,s+29}{s\\,{\\left(s^2 +6\\,s+58\\right)}}"}}
%---
%[output:2c117dc1]
%   data: {"dataType":"symbolic","outputData":{"name":"p","value":"\\frac{1}{2\\,s}-\\frac{\\frac{s}{2}-142}{s^2 +6\\,s+58}"}}
%---
%[output:613c33a4]
%   data: {"dataType":"symbolic","outputData":{"name":"c","value":"\\frac{1}{2}-\\frac{{\\mathrm{e}}^{-3\\,t} \\,{\\left(\\cos \\left(7\\,t\\right)-41\\,\\sin \\left(7\\,t\\right)\\right)}}{2}"}}
%---
%[output:45b003fc]
%   data: {"dataType":"symbolic","outputData":{"name":"ans","value":"\\frac{55\\,{\\mathrm{e}}^{-2\\,t} }{4}-20\\,{\\mathrm{e}}^{-t} +\\frac{15\\,t\\,{\\mathrm{e}}^{-2\\,t} }{2}+\\frac{25}{4}"}}
%---
%[output:9d7c2d1a]
%   data: {"dataType":"symbolic","outputData":{"name":"y","value":"{\\mathrm{e}}^{-5\\,t} +t\\,{\\mathrm{e}}^{6\\,t}"}}
%---
%[output:65c96a21]
%   data: {"dataType":"symbolic","outputData":{"name":"lap","value":"\\frac{1}{s+5}+\\frac{1}{{{\\left(s-6\\right)}}^2 }"}}
%---
