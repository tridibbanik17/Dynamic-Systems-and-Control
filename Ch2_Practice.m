%[text] **Laplace Transform**
clear 
syms s t
f(t) = t*sin(3*t) %[output:2bf873c3]
F(s)=laplace(f(t)) %[output:90b37075]
%[text] **Inverse Laplace**
ilaplace(F(s)) %[output:0c2a5a3b]
%[text] **Partial Fraction**
F(s)=(s^2+2*s-3)/((s-1)*(s+1)^2*(s^2+1)) %[output:182dd143]
partfrac(F(s)) %[output:4eae3e77]
%[text] A=0;B=3/2;C=1;D=3/2;E=-1/2;
%[text] **Inverse Laplace**
clear
syms s t
ilaplace(3 / (s*(s^2+2*s+5))) %[output:03a35e89]
%[text] **Derive a real, time-domain signal from a complex Laplace-domain expression**
clear
syms t s alpha beta omega sigma
G=((alpha-beta*i)/(s+sigma-omega*i))+((alpha+beta*i)/(s+sigma+omega*i)) %[output:90c299ed]
%[text] **Collect and rationalize in s**
G=collect(G,s) %[output:1ff20f22]
%[text] **Compute the inverse Laplace transform**
g=ilaplace(G) %[output:498ac782]
%[text] **Simplify to real time-domain form**
simplify(g) %[output:52b4a5e4]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline"}
%---
%[output:2bf873c3]
%   data: {"dataType":"symbolic","outputData":{"name":"f(t)","value":"t\\,\\sin \\left(3\\,t\\right)"}}
%---
%[output:90b37075]
%   data: {"dataType":"symbolic","outputData":{"name":"F(s)","value":"\\frac{6\\,s}{{{\\left(s^2 +9\\right)}}^2 }"}}
%---
%[output:0c2a5a3b]
%   data: {"dataType":"symbolic","outputData":{"name":"ans","value":"t\\,\\sin \\left(3\\,t\\right)"}}
%---
%[output:182dd143]
%   data: {"dataType":"symbolic","outputData":{"name":"F(s)","value":"\\frac{s^2 +2\\,s-3}{{\\left(s^2 +1\\right)}\\,{\\left(s-1\\right)}\\,{{\\left(s+1\\right)}}^2 }"}}
%---
%[output:4eae3e77]
%   data: {"dataType":"symbolic","outputData":{"name":"ans","value":"\\frac{3}{2\\,{\\left(s+1\\right)}}-\\frac{\\frac{3\\,s}{2}-\\frac{1}{2}}{s^2 +1}+\\frac{1}{{{\\left(s+1\\right)}}^2 }"}}
%---
%[output:03a35e89]
%   data: {"dataType":"symbolic","outputData":{"name":"ans","value":"\\frac{3}{5}-\\frac{3\\,{\\mathrm{e}}^{-t} \\,{\\left(\\cos \\left(2\\,t\\right)+\\frac{\\sin \\left(2\\,t\\right)}{2}\\right)}}{5}"}}
%---
%[output:90c299ed]
%   data: {"dataType":"symbolic","outputData":{"name":"G","value":"\\frac{\\alpha -\\beta \\,\\mathrm{i}}{s+\\sigma -\\omega \\,\\mathrm{i}}+\\frac{\\alpha +\\beta \\,\\mathrm{i}}{s+\\sigma +\\omega \\,\\mathrm{i}}"}}
%---
%[output:1ff20f22]
%   data: {"dataType":"symbolic","outputData":{"name":"G","value":"\\frac{{\\left(2\\,\\alpha \\right)}\\,s+2\\,\\beta \\,\\omega +2\\,\\alpha \\,\\sigma }{s^2 +{\\left(2\\,\\sigma \\right)}\\,s+\\omega^2 +\\sigma^2 }"}}
%---
%[output:498ac782]
%   data: {"dataType":"symbolic","outputData":{"name":"g","value":"2\\,\\alpha \\,{\\mathrm{e}}^{-\\sigma \\,t} \\,{\\left(\\cosh \\left(\\omega \\,t\\,\\mathrm{i}\\right)+\\frac{\\sinh \\left(\\omega \\,t\\,\\mathrm{i}\\right)\\,{\\left(\\sigma -\\frac{2\\,\\beta \\,\\omega +2\\,\\alpha \\,\\sigma }{2\\,\\alpha }\\right)}\\,\\mathrm{i}}{\\omega }\\right)}"}}
%---
%[output:52b4a5e4]
%   data: {"dataType":"symbolic","outputData":{"name":"ans","value":"2\\,{\\mathrm{e}}^{-\\sigma \\,t} \\,{\\left(\\alpha \\,\\cos \\left(\\omega \\,t\\right)+\\beta \\,\\sin \\left(\\omega \\,t\\right)\\right)}"}}
%---
