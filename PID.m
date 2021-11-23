
%Proportiona-Integral-Derivative Controller
%Final Year Project-2k17
num=[6.25]
denom =[1 2.3 6.25]
%Code for Open loop response
Gp=tf(num, denom)
H=[1]
M_openloop=feedback(Gp,H)

step(M_openloop)
hold on
%%
%Code for Close loop response
Kp=7.5
Ki=0.7
Kd=3.65
Gc=pid(Kp,Ki,Kd
M_closeloop=feedback(Gc*Gp,H)
step(M_closeloop)
grid on
