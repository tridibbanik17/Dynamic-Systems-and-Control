%[text] **Loop Analysis** 
clear
syms s I1 I2 R1 R2 C L V
%[text] 
eq1=collect(V-R1*I1-L*s*(I1-I2)==0) %[output:91a399cd]
eq2=collect(V-I1*R1-I2*R2-(I2/(C*s))==0) %[output:165c5672]
LoopSoln = solve([eq1,eq2],[I1 I2]) %[output:953d4d2f]
V_c=(1/(C*s))*LoopSoln.I2 %[output:29c779d5]
%[text] 
G_Vc=collect(V_c/V) %[output:6d72121a]
%[text] **Nodal Analysis**
clear
syms s t V_A V_B V

eq1 = (1+(1/(1+2*s))+(1/(4*s)))*V_A - V_B/(4*s) == V;
eq2 = (-V_A/(4*s))+(s+1/(4*s)+1/(3*s))*V_B == s*V;
collect(eq1) %[output:6ced2dab]
collect(eq2) %[output:2f3e6a18]

Soln = solve([eq1,eq2],[V_A,V_B]) %[output:5c30fadf]
V_A=collect(Soln.V_A) %[output:5dceab6d]
V_B=collect(Soln.V_B) %[output:7bf1ad8f]
V_C=V-V_B %[output:5160f6ca]
transfer=collect(V_C/V) %[output:99fb87b8]


%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline"}
%---
%[output:91a399cd]
%   data: {"dataType":"symbolic","outputData":{"name":"eq1","value":"{\\left(-L\\,{\\left(I_1 -I_2 \\right)}\\right)}\\,s+V-I_1 \\,R_1 =0"}}
%---
%[output:165c5672]
%   data: {"dataType":"symbolic","outputData":{"name":"eq2","value":"\\frac{{\\left(C\\,V-C\\,I_1 \\,R_1 -C\\,I_2 \\,R_2 \\right)}\\,s-I_2 }{C\\,s}=0"}}
%---
%[output:953d4d2f]
%   data: {"dataType":"textualVariable","outputData":{"header":"struct with fields:","name":"LoopSoln","value":"    I1: (V*(C*L*s^2 + C*R2*s + 1))\/(R1 + L*s + C*L*R1*s^2 + C*L*R2*s^2 + C*R1*R2*s)\n    I2: (C*L*V*s^2)\/(R1 + L*s + C*L*R1*s^2 + C*L*R2*s^2 + C*R1*R2*s)\n"}}
%---
%[output:29c779d5]
%   data: {"dataType":"symbolic","outputData":{"name":"V_c","value":"\\frac{L\\,V\\,s}{R_1 +L\\,s+C\\,L\\,R_1 \\,s^2 +C\\,L\\,R_2 \\,s^2 +C\\,R_1 \\,R_2 \\,s}"}}
%---
%[output:6d72121a]
%   data: {"dataType":"symbolic","outputData":{"name":"G_Vc","value":"\\frac{L\\,s}{{\\left(C\\,L\\,R_1 +C\\,L\\,R_2 \\right)}\\,s^2 +{\\left(L+C\\,R_1 \\,R_2 \\right)}\\,s+R_1 }"}}
%---
%[output:6ced2dab]
%   data: {"dataType":"symbolic","outputData":{"name":"ans","value":"\\frac{{\\left(12\\,V_B \\right)}\\,s^2 +7\\,V_B -3\\,V_A }{12\\,s}=V\\,s"}}
%---
%[output:2f3e6a18]
%   data: {"dataType":"symbolic","outputData":{"name":"ans","value":"\\frac{{\\left(8\\,V_A \\right)}\\,s^2 +{\\left(10\\,V_A -2\\,V_B \\right)}\\,s+V_A -V_B }{8\\,s^2 +4\\,s}=V"}}
%---
%[output:5c30fadf]
%   data: {"dataType":"textualVariable","outputData":{"header":"struct with fields:","name":"Soln","value":"    V_A: (V*s*(2*s + 1)*(12*s^2 + 3*s + 7))\/(24*s^4 + 30*s^3 + 17*s^2 + 16*s + 1)\n    V_B: (3*V*s*(8*s^3 + 10*s^2 + 3*s + 1))\/(24*s^4 + 30*s^3 + 17*s^2 + 16*s + 1)\n"}}
%---
%[output:5dceab6d]
%   data: {"dataType":"symbolic","outputData":{"name":"V_A","value":"\\frac{{\\left(24\\,V\\right)}\\,s^4 +{\\left(18\\,V\\right)}\\,s^3 +{\\left(17\\,V\\right)}\\,s^2 +{\\left(7\\,V\\right)}\\,s}{24\\,s^4 +30\\,s^3 +17\\,s^2 +16\\,s+1}"}}
%---
%[output:7bf1ad8f]
%   data: {"dataType":"symbolic","outputData":{"name":"V_B","value":"\\frac{{\\left(24\\,V\\right)}\\,s^4 +{\\left(30\\,V\\right)}\\,s^3 +{\\left(9\\,V\\right)}\\,s^2 +{\\left(3\\,V\\right)}\\,s}{24\\,s^4 +30\\,s^3 +17\\,s^2 +16\\,s+1}"}}
%---
%[output:5160f6ca]
%   data: {"dataType":"symbolic","outputData":{"name":"V_C","value":"V-\\frac{24\\,V\\,s^4 +30\\,V\\,s^3 +9\\,V\\,s^2 +3\\,V\\,s}{24\\,s^4 +30\\,s^3 +17\\,s^2 +16\\,s+1}"}}
%---
%[output:99fb87b8]
%   data: {"dataType":"symbolic","outputData":{"name":"transfer","value":"\\frac{8\\,s^2 +13\\,s+1}{24\\,s^4 +30\\,s^3 +17\\,s^2 +16\\,s+1}"}}
%---
