% Step 1 - Define the plant first
num = [0.419];
den = [1, 0, 0];
sys = tf(num, den);

% Step 2 - Launch rltool with the plant
rltool(sys)

% Step 3 - Open ControlSystemDesignerSession_c1.mat