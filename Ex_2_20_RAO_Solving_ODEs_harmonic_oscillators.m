% Free Vibration Response of a Viscously Damped System
% Emmanuel J Rodriguez
% June 18th, 2020
% @ Villa Camino, Oceanside, CA
% Refer to: Rao, Example 2.20, p.175 - 176
% Supporting documents located: C:\Users\ejoaq\OneDrive\1 My_Notebook\3 Engineering\Mechanical Vibrations\MATLAB programs
% Program design:
% Free_Vibration_Response_of_Viscously_Damped_System_Program-Design_Rodriguez.vsdx
% Hand calculations:
% HAND-CALCULATIONS_Free_Vibration_Response_of_Viscously_Damped_System_Program-Design_Rodriguez.pdf
%
%% Program Start
% https://www.mathworks.com/videos/solving-odes-in-matlab-8-systems-of-equations-117652.html
c = 1000.0;
k = 26519.2;
m = 450.0;
F = @(t,x) [x(2); ((-c*x(2)-k*x(1))/m)]; % I believe x(2) is the velocity column,
% that is, it is calling column 2 in the x array.
% x(1) is the position column, it is calling column 1 in the x-array.
% I believe that every time this function is called, it is only quering a
% row at a time, that is, a 1 x 2 array. So, x(2) would query element #2,
% which is column #2.
xi = [0.539657; 1.0];
opts = odeset('stats','on'); % options structure for ODE solvers; % solver statistics
delt = .0025;
tspan = [0.0025:delt:2.5];
tic, [t,x]=ode23(F, tspan, xi, opts);, toc
xdisp = x(:,1); % x-displacement vector
xd = x(:,2); % x-dot or velocity vector
xdd = gradient(xd,delt); % x-double-dot or acceleration vector
% gradient function for derivative calculations
% Refer to: https://www.mathworks.com/matlabcentral/answers/196969-second-derivative-using-diff
plot(t,xdisp)
gtext('x(t)');
hold on
plot(t,xd);
gtext('xd(t)');
plot(t,xdd);
xlabel('t, seconds');
ylabel('x(t), xd(t), xdd(t)');
gtext('xdd(t)');
title('Free Vibration Response of a Viscously Damped System')
hold off

% End Program