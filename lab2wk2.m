%[text] Rotational Mechanical System
clear
syms s theta_1 theta_2 T(s) J_1 J_2 D_1 K_1 K_2
%[text] System equations (Laplace domain)
eq1 = theta_1*(J_1*s^2 + D_1*s + K_1) + theta_2*(-K_1 - D_1*s) == T(s) %[output:87ec76a1]
eq2 = theta_1*(K_1 + D_1*s) + theta_2*(-K_1-D_1*s-J_2*s^2-K_2) == 0;
%[text] Solve for angular displacements
solns=solve([eq1,eq2],[theta_1,theta_2]) %[output:7d6bc393]
%[text] % Transfer function G1(s) = theta\_1(s)/T(s)
G_1=collect(solns.theta_1/T(s)) %[output:3c7c8896]
%[text] Substitute parameter values
G_1 = subs(G_1, [J_1, J_2, K_1, K_2, D_1], [1, 2, 5, 7, 3]);
%[text] Display result
disp(G_1); %[output:917fbf3c]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline"}
%---
%[output:87ec76a1]
%   data: {"dataType":"symbolic","outputData":{"name":"eq1","value":"\\theta_1 \\,{\\left(J_1 \\,s^2 +D_1 \\,s+K_1 \\right)}-\\theta_2 \\,{\\left(K_1 +D_1 \\,s\\right)}=T\\left(s\\right)"}}
%---
%[output:7d6bc393]
%   data: {"dataType":"textualVariable","outputData":{"header":"struct with fields:","name":"solns","value":"    theta_1: (T(s)*(J_2*s^2 + D_1*s + K_1 + K_2))\/(K_1*K_2 + D_1*K_2*s + D_1*J_1*s^3 + D_1*J_2*s^3 + J_1*J_2*s^4 + J_1*K_1*s^2 + J_1*K_2*s^2 + J_2*K_1*s^2)\n    theta_2: (T(s)*(K_1 + D_1*s))\/(K_1*K_2 + D_1*K_2*s + D_1*J_1*s^3 + D_1*J_2*s^3 + J_1*J_2*s^4 + J_1*K_1*s^2 + J_1*K_2*s^2 + J_2*K_1*s^2)\n"}}
%---
%[output:3c7c8896]
%   data: {"dataType":"symbolic","outputData":{"name":"G_1","value":"\\frac{J_2 \\,s^2 +D_1 \\,s+K_1 +K_2 }{{\\left(J_1 \\,J_2 \\right)}\\,s^4 +{\\left(D_1 \\,J_1 +D_1 \\,J_2 \\right)}\\,s^3 +{\\left(J_1 \\,K_1 +J_1 \\,K_2 +J_2 \\,K_1 \\right)}\\,s^2 +{\\left(D_1 \\,K_2 \\right)}\\,s+K_1 \\,K_2 }"}}
%---
%[output:917fbf3c]
%   data: {"dataType":"symbolic","outputData":{"name":"","value":"\\frac{2\\,s^2 +3\\,s+12}{2\\,s^4 +9\\,s^3 +22\\,s^2 +21\\,s+35}"}}
%---
