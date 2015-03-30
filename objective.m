function f = objective(req_coeff);
%NOT IMPLEMENTED
%test with constant
% f = 10; % use constant objective for feasibilty test

req_coeff;
t0 = 1;
t_f = 10;
syms t;
 
B0 = (1 - (t - t0)/(-t0 + t_f))^5 ;
B1 = (5*(t - t0)*(1 - (t - t0)/(-t0 + t_f))^4)/(-t0 + t_f);
B2 = (10*(t - t0)^2*(1 - (t - t0)/(-t0 + t_f))^3)/(-t0 + t_f)^2;
B3 = (10*(t - t0)^3*(1 - (t - t0)/(-t0 + t_f))^2)/(-t0 + t_f)^3;
B4 = (5*(t - t0)^4*(1 - (t - t0)/(-t0 + t_f)))/(-t0 + t_f)^4;
B5 = (t - t0)^5/(-t0 + t_f)^5;

pCell = num2cell(req_coeff);
[x0,x1,x2,x3,x4,x5,k0,k1,k2,k3,k4,k5] = pCell{:};
%just to make it readable

B0dot = -((5*(1 - (t - t0)/(-t0 + t_f))^4)/(-t0 + t_f));
B1dot = -((20*(t - t0)*(1 - (t - t0)/(-t0 + t_f))^3)/(-t0 + t_f)^2) + (5*(1 - (t - t0)/(-t0 + t_f))^4)/(-t0 + t_f);
B2dot = -((30*(t - t0)^2*(1 - (t - t0)/(-t0 + t_f))^2)/(-t0 + t_f)^3) + (20*(t - t0)*(1 - (t - t0)/(-t0 + t_f))^3)/(-t0 + t_f)^2;
B3dot = -((20*(t - t0)^3*(1 - (t - t0)/(-t0 + t_f)))/(-t0 + t_f)^4) + (30*(t - t0)^2*(1 - (t - t0)/(-t0 + t_f))^2)/(-t0 + t_f)^3;
B4dot = -((5*(t - t0)^4)/(-t0 + t_f)^5) + (20*(t - t0)^3*(1 - (t - t0)/(-t0 + t_f)))/(-t0 + t_f)^4;
B5dot = (5*(t - t0)^4)/(-t0 + t_f)^5;

xdot = B0dot*x0 + B1dot*x1 + B2dot*x2 + B3dot*x3 + B4dot*x4 + B5dot*x5; 
k = B0*k0 + B1*k1 + B2*k2 + B3*k3 + B4*k4 + B5*k5; 
 % ydot = xdot*k; 

ydot = ((k5*(t - t0)^5)/(-t0 + t_f)^5 + (5*k4*(t - t0)^4*(1 - (t - t0)/(-t0 + t_f)))/(-t0 + t_f)^4 + (10*k3*(t - t0)^3*(1 - (t - t0)/(-t0 + t_f))^2)/(-t0 + t_f)^3 + (10*k2*(t - t0)^2*(1 - (t - t0)/(-t0 + t_f))^3)/(-t0 + t_f)^2 + (5*k1*(t - t0)*(1 - (t - t0)/(-t0 + t_f))^4)/(-t0 + t_f) + k0*(1 - (t - t0)/(-t0 + t_f))^5)*(-((5*(1 - (t - t0)/(-t0 + t_f))^4*x0)/(-t0 + t_f)) + (-((20*(t - t0)*(1 - (t - t0)/(-t0 + t_f))^3)/(-t0 + t_f)^2) + (5*(1 - (t - t0)/(-t0 + t_f))^4)/(-t0 + t_f))*x1 + (-((30*(t - t0)^2*(1 - (t - t0)/(-t0 + t_f))^2)/(-t0 + t_f)^3) + (20*(t - t0)*(1 - (t - t0)/(-t0 + t_f))^3)/(-t0 + t_f)^2)*x2 + (-((20*(t - t0)^3*(1 - (t - t0)/(-t0 + t_f)))/(-t0 + t_f)^4) + (30*(t - t0)^2*(1 - (t - t0)/(-t0 + t_f))^2)/(-t0 + t_f)^3)*x3 + (-((5*(t - t0)^4)/(-t0 + t_f)^5) + (20*(t - t0)^3*(1 - (t - t0)/(-t0 + t_f)))/(-t0 + t_f)^4)* x4 + (5*(t - t0)^4*x5)/(-t0 + t_f)^5);

diff_length = sqrt((xdot^2) + (ydot^2));
length = int(diff_length, t, t0, t_f);
approx_length = double(vpa(length, 5))
f = approx_length; 
