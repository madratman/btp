function [c,ceq] = nonlcon(req_coeff);
%ceq = [];

% req_coeff
      
%   X = [ 1     1     1 ];
%a13 = b2 + LW*tanh(b1+IW*X);
req_coeff;
t0 = 1;
t_f = 10;
syms t
 
B0 = (1 - (t - t0)/(-t0 + t_f))^5 ;
B1 = (5*(t - t0)*(1 - (t - t0)/(-t0 + t_f))^4)/(-t0 + t_f);
B2 = (10*(t - t0)^2*(1 - (t - t0)/(-t0 + t_f))^3)/(-t0 + t_f)^2;
B3 = (10*(t - t0)^3*(1 - (t - t0)/(-t0 + t_f))^2)/(-t0 + t_f)^3;
B4 = (5*(t - t0)^4*(1 - (t - t0)/(-t0 + t_f)))/(-t0 + t_f)^4;
B5 = (t - t0)^5/(-t0 + t_f)^5;

pCell = num2cell(req_coeff);
[x0,x1,x2,x3,x4,x5,k0,k1,k2,k3,k4,k5] = pCell{:};
%just to make it readable

x = B0*x0 + B1*x1 + B2*x2 + B3*x3 + B4*x4 + B5*x5;
k = B0*k0 + B1*k1 + B2*k2 + B3*k3 + B4*k4 + B5*k5;
alpha = atan(k);
% req_coeff = [x0;x1;x2;x3;x4;x5;k0;k1;k2;k3;k4;k5];
% everything should be in terms of "req_coeff", so we need the following
% coeffais in the form of AA*reqcoeff(i) (as a product of a column and (req_coeff's) row
% vector 
% x = req_coeff

% coeffa0 = -((1/(t0 - t_f)^10)*(5*(-(t^10/10) + t0^10/10 + t^9*t_f - t0^9*t_f - (9*t^8*t_f^2)/2 + (9*t0^8*t_f^2)/2 + 12*t^7*t_f^3 - 12*t0^7*t_f^3 - 21*t^6*t_f^4 + 21*t0^6*t_f^4 + (126*t^5*t_f^5)/5 - (126*t0^5*t_f^5)/5 - 21*t^4*t_f^6 + 21*t0^4*t_f^6 + 12*t^3*t_f^7 - 12*t0^3*t_f^7 - (9*t^2*t_f^8)/2 + (9*t0^2*t_f^8)/2 + t*t_f^9 - t0*t_f^9)* x0)) - (1/(t0 - t_f)^10)*(5*(t^10/2 - (4*t^9*t0)/9 - t0^10/18 - (41*t^9*t_f)/9 + 4*t^8*t0*t_f + (5*t0^9*t_f)/9 + (37*t^8*t_f^2)/2 - 16*t^7*t0*t_f^2 - (5*t0^8*t_f^2)/2 - 44*t^7*t_f^3 + (112/3)*t^6*t0*t_f^3 + (20*t0^7*t_f^3)/ 3 + (203*t^6*t_f^4)/3 - 56*t^5*t0*t_f^4 - (35*t0^6*t_f^4)/3 - 70*t^5*t_f^5 + 56*t^4*t0*t_f^5 + 14*t0^5*t_f^5 + 49*t^4*t_f^6 - (112/3)*t^3*t0*t_f^6 - (35*t0^4*t_f^6)/ 3 - (68*t^3*t_f^7)/3 + 16*t^2*t0*t_f^7 + (20*t0^3*t_f^7)/3 + (13*t^2*t_f^8)/2 - 4*t*t0*t_f^8 - (5*t0^2*t_f^8)/2 - t*t_f^9 + t0*t_f^9)*x1) - (1/(t0 - t_f)^10)*(5*(-t^10 + (16*t^9*t0)/9 - (3*t^8*t0^2)/4 - t0^10/36 + (74*t^9*t_f)/9 - (29/2)*t^8*t0*t_f + 6*t^7*t0^2*t_f + (5*t0^9*t_f)/18 - (119*t^8*t_f^2)/4 + 52*t^7*t0*t_f^2 - 21*t^6*t0^2*t_f^2 - (5*t0^8*t_f^2)/4 + 62*t^7*t_f^3 - (322/3)*t^6*t0*t_f^3 + 42*t^5*t0^2*t_f^3 + (10*t0^7*t_f^3)/3 - (245*t^6*t_f^4)/3 + 140*t^5*t0*t_f^4 - (105/2)*t^4*t0^2*t_f^4 - (35*t0^6*t_f^4)/6 + 70*t^5*t_f^5 - 119*t^4*t0*t_f^5 + 42*t^3*t0^2*t_f^5 + 7*t0^5*t_f^5 - (77*t^4*t_f^6)/2 + (196/3)*t^3*t0*t_f^6 - 21*t^2*t0^2*t_f^6 - (35*t0^4*t_f^6)/6 + (38*t^3*t_f^7)/3 - 22*t^2*t0*t_f^7 + 6*t*t0^2*t_f^7 + (10*t0^3*t_f^7)/3 - 2*t^2*t_f^8 + 4*t*t0*t_f^8 - 2*t0^2*t_f^8)* x2) - (1/(t0 - t_f)^10)*(5*(t^10 - (8*t^9*t0)/3 + (9*t^8*t0^2)/ 4 - (4*t^7*t0^3)/7 - t0^10/84 - (22*t^9*t_f)/3 + (39/2)*t^8*t0*t_f - (114/7)*t^7*t0^2*t_f + 4*t^6*t0^3*t_f + (5*t0^9*t_f)/42 + (93*t^8*t_f^2)/4 - (432/7)*t^7* t0*t_f^2 + 51*t^6*t0^2*t_f^2 - 12*t^5*t0^3*t_f^2 - (15*t0^8*t_f^2)/28 - (290*t^7*t_f^3)/7 + 110*t^6*t0*t_f^3 - 90*t^5*t0^2*t_f^3 + 20*t^4*t0^3*t_f^3 + (10*t0^7*t_f^3)/7 + 45*t^6*t_f^4 - 120*t^5*t0*t_f^4 + (195/2)*t^4*t0^2*t_f^4 - 20*t^3*t0^3*t_f^4 - (5*t0^6*t_f^4)/2 - 30*t^5*t_f^5 + 81*t^4*t0*t_f^5 - 66*t^3*t0^2*t_f^5 + 12*t^2*t0^3*t_f^5 + 3*t0^5*t_f^5 + (23*t^4*t_f^6)/2 - 32*t^3*t0*t_f^6 + 27*t^2*t0^2*t_f^6 - 4*t*t0^3*t_f^6 - (5*t0^4*t_f^6)/2 - 2*t^3*t_f^7 + 6*t^2*t0*t_f^7 - 6*t*t0^2*t_f^7 + 2*t0^3*t_f^7)* x3) - (1/(t0 - t_f)^10)*(5*(-(t^10/2) + (16*t^9*t0)/ 9 - (9*t^8*t0^2)/4 + (8*t^7*t0^3)/7 - (t^6*t0^4)/6 - t0^10/252 + (29*t^9*t_f)/9 - (23/2)*t^8*t0*t_f + (102/7)*t^7*t0^2*t_f - (22/3)*t^6*t0^3* t_f + t^5*t0^4*t_f + (5*t0^9*t_f)/126 - (35*t^8*t_f^2)/4 + (220/7)* t^7*t0*t_f^2 - 40*t^6*t0^2*t_f^2 + 20*t^5*t0^3*t_f^2 - (5/2)*t^4*t0^4*t_f^2 - (5*t0^8*t_f^2)/ 28 + (90*t^7*t_f^3)/7 - (140/3)*t^6*t0*t_f^3 + 60*t^5*t0^2*t_f^3 - 30*t^4*t0^3*t_f^3 + (10/3)*t^3*t0^4*t_f^3 + (10*t0^7*t_f^3)/ 21 - (65*t^6*t_f^4)/6 + 40*t^5*t0*t_f^4 - (105/2)*t^4*t0^2*t_f^4 + (80/3)*t^3*t0^3*t_f^4 - (5/2)*t^2*t0^4*t_f^4 - (5*t0^6*t_f^4)/6 + 5*t^5*t_f^5 - 19*t^4*t0*t_f^5 + 26*t^3*t0^2*t_f^5 - 14*t^2*t0^3*t_f^5 + t*t0^4*t_f^5 + t0^5*t_f^5 - t^4*t_f^6 + 4*t^3*t0*t_f^6 - 6*t^2*t0^2*t_f^6 + 4*t*t0^3*t_f^6 - t0^4*t_f^6)*x4) - (1/(t0 - t_f)^10)*(5*(t^10/10 - (4*t^9*t0)/9 + (3*t^8*t0^2)/ 4 - (4*t^7*t0^3)/7 + (t^6*t0^4)/6 - t0^10/1260 - (5*t^9*t_f)/9 + (5/2)*t^8*t0*t_f - (30/7)*t^7*t0^2*t_f + (10/3)*t^6*t0^3*t_f - t^5*t0^4*t_f + (t0^9*t_f)/126 + (5*t^8*t_f^2)/4 - (40/7)*t^7*t0* t_f^2 + 10*t^6*t0^2*t_f^2 - 8*t^5*t0^3*t_f^2 + (5/2)*t^4*t0^4*t_f^2 - (t0^8*t_f^2)/28 - (10*t^7*t_f^3)/ 7 + (20/3)*t^6*t0*t_f^3 - 12*t^5*t0^2*t_f^3 + 10*t^4*t0^3*t_f^3 - (10/3)*t^3*t0^4*t_f^3 + (2*t0^7*t_f^3)/21 + (5*t^6*t_f^4)/6 - 4*t^5*t0*t_f^4 + (15/2)*t^4*t0^2*t_f^4 - (20/3)*t^3*t0^3* t_f^4 + (5/2)*t^2*t0^4*t_f^4 - (t0^6*t_f^4)/6 - (t^5*t_f^5)/5 + t^4*t0*t_f^5 - 2*t^3*t0^2*t_f^5 + 2*t^2*t0^3*t_f^5 - t*t0^4*t_f^5 + (t0^5*t_f^5)/5)*x5);
% coeffa1 = -((1/(t0 - t_f)^10)*(5*(t^10/2 - (5*t^9*t0)/9 + t0^10/18 - (40*t^9*t_f)/9 + 5*t^8*t0*t_f - (5*t0^9*t_f)/9 + (35*t^8*t_f^2)/2 - 20*t^7*t0*t_f^2 + (5*t0^8*t_f^2)/2 - 40*t^7*t_f^3 + (140/3)*t^6*t0*t_f^3 - (20*t0^7*t_f^3)/3 + (175*t^6*t_f^4)/ 3 - 70*t^5*t0*t_f^4 + (35*t0^6*t_f^4)/3 - 56*t^5*t_f^5 + 70*t^4*t0*t_f^5 - 14*t0^5*t_f^5 + 35*t^4*t_f^6 - (140/3)*t^3*t0*t_f^6 + (35*t0^4*t_f^6)/3 - (40*t^3*t_f^7)/ 3 + 20*t^2*t0*t_f^7 - (20*t0^3*t_f^7)/3 + (5*t^2*t_f^8)/2 - 5*t*t0*t_f^8 + (5*t0^2*t_f^8)/2)*x0)) - (1/(t0 - t_f)^10)*(5*(-((5*t^10)/2) + 5*t^9*t0 - (5*t^8*t0^2)/2 + 20*t^9*t_f - 40*t^8*t0*t_f + 20*t^7*t0^2*t_f - 70*t^8*t_f^2 + 140*t^7*t0*t_f^2 - 70*t^6*t0^2*t_f^2 + 140*t^7*t_f^3 - 280*t^6*t0*t_f^3 + 140*t^5*t0^2*t_f^3 - 175*t^6*t_f^4 + 350*t^5*t0*t_f^4 - 175*t^4*t0^2*t_f^4 + 140*t^5*t_f^5 - 280*t^4*t0*t_f^5 + 140*t^3*t0^2*t_f^5 - 70*t^4*t_f^6 + 140*t^3*t0*t_f^6 - 70*t^2*t0^2*t_f^6 + 20*t^3*t_f^7 - 40*t^2*t0*t_f^7 + 20*t*t0^2*t_f^7 - (5*t^2*t_f^8)/2 + 5*t*t0*t_f^8 - (5*t0^2*t_f^8)/2)*x1) - (1/(t0 - t_f)^10)* (5*(5*t^10 - (130*t^9*t0)/9 + (55*t^8*t0^2)/4 - (30*t^7*t0^3)/7 - (5*t0^10)/252 - (320*t^9*t_f)/9 + (205/2)*t^8*t0*t_f - (680/7)*t^7*t0^2*t_f + 30*t^6*t0^3*t_f + (25*t0^9*t_f)/126 + (435*t^8*t_f^2)/4 - (2190/7)*t^7*t0*t_f^2 + 295*t^6*t0^2*t_f^2 - 90*t^5*t0^3*t_f^2 - (25*t0^8*t_f^2)/28 - (1300*t^7*t_f^3)/7 + (1600/3)*t^6*t0*t_f^3 - 500*t^5*t0^2*t_f^3 + 150*t^4*t0^3*t_f^3 + (50*t0^7*t_f^3)/21 + (575*t^6*t_f^4)/3 - 550*t^5*t0*t_f^4 + (1025/2)*t^4*t0^2*t_f^4 - 150*t^3*t0^3*t_f^4 - (25*t0^6*t_f^4)/6 - 120*t^5*t_f^5 + 345*t^4*t0*t_f^5 - 320*t^3*t0^2*t_f^5 + 90*t^2*t0^3*t_f^5 + 5*t0^5*t_f^5 + (85*t^4*t_f^6)/2 - (370/3)*t^3*t0*t_f^6 + 115*t^2*t0^2*t_f^6 - 30*t*t0^3*t_f^6 - (25*t0^4*t_f^6)/6 - (20*t^3*t_f^7)/3 + 20*t^2*t0*t_f^7 - 20*t*t0^2*t_f^7 + (20*t0^3*t_f^7)/3)*x2) - (1/(t0 - t_f)^10)*(5*(-5*t^10 + (170*t^9*t0)/9 - (105*t^8*t0^2)/4 + (110*t^7*t0^3)/7 - (10*t^6*t0^4)/3 - (5*t0^10)/252 + (280*t^9*t_f)/9 - (235/2)*t^8*t0*t_f + (1140/7)*t^7*t0^2*t_f - (290/3)*t^6*t0^3*t_f + 20*t^5*t0^4*t_f + (25*t0^9*t_f)/126 - (325*t^8*t_f^2)/4 + (2150/7)*t^7*t0*t_f^2 - 425*t^6*t0^2*t_f^2 + 250*t^5*t0^3*t_f^2 - 50*t^4*t0^4*t_f^2 - (25*t0^8*t_f^2)/28 + (800*t^7*t_f^3)/7 - (1300/3)*t^6*t0*t_f^3 + 600*t^5*t0^2*t_f^3 - 350*t^4*t0^3*t_f^3 + (200/3)*t^3*t0^4*t_f^3 + (50*t0^7*t_f^3)/21 - (275*t^6*t_f^4)/3 + 350*t^5*t0*t_f^4 - (975/2)*t^4*t0^2*t_f^4 + (850/3)*t^3*t0^3*t_f^4 - 50*t^2*t0^4*t_f^4 - (25*t0^6*t_f^4)/6 + 40*t^5*t_f^5 - 155*t^4*t0*t_f^5 + 220*t^3*t0^2*t_f^5 - 130*t^2*t0^3*t_f^5 + 20*t*t0^4*t_f^5 + 5*t0^5*t_f^5 - (15*t^4*t_f^6)/2 + 30*t^3*t0*t_f^6 - 45*t^2*t0^2*t_f^6 + 30*t*t0^3*t_f^6 - (15*t0^4*t_f^6)/2)*x3) - (1/(t0 - t_f)^10)*(5*((5*t^10)/2 - (35*t^9*t0)/3 + (85*t^8*t0^2)/4 - (130*t^7*t0^3)/7 + (15*t^6*t0^4)/2 - t^5*t0^5 - t0^10/84 - (40*t^9*t_f)/3 + (125/2)*t^8*t0*t_f - (800/7)*t^7*t0^2*t_f + 100*t^6*t0^3*t_f - 40*t^5*t0^4*t_f + 5*t^4*t0^5*t_f + (5*t0^9*t_f)/42 + (115*t^8*t_f^2)/4 - (950/7)*t^7*t0*t_f^2 + 250*t^6*t0^2*t_f^2 - 220*t^5*t0^3*t_f^2 + (175/2)*t^4*t0^4*t_f^2 - 10*t^3*t0^5*t_f^2 - (15*t0^8*t_f^2)/28 - (220*t^7*t_f^3)/7 + 150*t^6*t0*t_f^3 - 280*t^5*t0^2*t_f^3 + 250*t^4*t0^3*t_f^3 - 100*t^3*t0^4*t_f^3 + 10*t^2*t0^5*t_f^3 + (10*t0^7*t_f^3)/7 + (35*t^6*t_f^4)/2 - 85*t^5*t0*t_f^4 + (325/2)*t^4*t0^2*t_f^4 - 150*t^3*t0^3*t_f^4 + (125/2)*t^2*t0^4*t_f^4 - 5*t*t0^5*t_f^4 - (5*t0^6*t_f^4)/2 - 4*t^5*t_f^5 + 20*t^4*t0*t_f^5 - 40*t^3*t0^2*t_f^5 + 40*t^2*t0^3*t_f^5 - 20*t*t0^4*t_f^5 + 4*t0^5*t_f^5)*x4) - (1/(t0 - t_f)^10)* (5*(-(t^10/2) + (25*t^9*t0)/9 - (25*t^8*t0^2)/4 + (50*t^7*t0^3)/ 7 - (25*t^6*t0^4)/6 + t^5*t0^5 - t0^10/252 + (20*t^9*t_f)/9 - (25/2)*t^8*t0*t_f + (200/7)*t^7*t0^2*t_f - (100/3)*t^6*t0^3* t_f + 20*t^5*t0^4*t_f - 5*t^4*t0^5*t_f + (5*t0^9*t_f)/126 - (15*t^8*t_f^2)/4 + (150/7)*t^7*t0*t_f^2 - 50*t^6*t0^2*t_f^2 + 60*t^5*t0^3*t_f^2 - (75/2)*t^4*t0^4*t_f^2 + 10*t^3*t0^5*t_f^2 - (5*t0^8*t_f^2)/28 + (20*t^7*t_f^3)/7 - (50/3)*t^6*t0*t_f^3 + 40*t^5*t0^2*t_f^3 - 50*t^4*t0^3*t_f^3 + (100/3)*t^3*t0^4*t_f^3 - 10*t^2*t0^5*t_f^3 + (10*t0^7*t_f^3)/21 - (5*t^6*t_f^4)/6 + 5*t^5*t0*t_f^4 - (25/2)*t^4*t0^2*t_f^4 + (50/3)*t^3*t0^3*t_f^4 - (25/2)*t^2*t0^4*t_f^4 + 5*t*t0^5*t_f^4 - (5*t0^6*t_f^4)/6)*x5);
% coeffa2 = -((1/(t0 - t_f)^10)*(5*(-t^10 + (20*t^9*t0)/9 - (5*t^8*t0^2)/4 + t0^10/36 + (70*t^9*t_f)/9 - (35/2)*t^8*t0*t_f + 10*t^7*t0^2*t_f - (5*t0^9*t_f)/18 - (105*t^8*t_f^2)/4 + 60*t^7*t0*t_f^2 - 35*t^6*t0^2*t_f^2 + (5*t0^8*t_f^2)/4 + 50*t^7*t_f^3 - (350/3)*t^6*t0*t_f^3 + 70*t^5*t0^2*t_f^3 - (10*t0^7*t_f^3)/3 - (175*t^6*t_f^4)/3 + 140*t^5*t0*t_f^4 - (175/2)*t^4*t0^2*t_f^4 + (35*t0^6*t_f^4)/6 + 42*t^5*t_f^5 - 105*t^4*t0*t_f^5 + 70*t^3*t0^2*t_f^5 - 7*t0^5*t_f^5 - (35*t^4*t_f^6)/2 + (140/3)*t^3*t0*t_f^6 - 35*t^2*t0^2*t_f^6 + (35*t0^4*t_f^6)/6 + (10*t^3*t_f^7)/3 - 10*t^2*t0*t_f^7 + 10*t*t0^2*t_f^7 - (10*t0^3*t_f^7)/3)* x0)) - (1/(t0 - t_f)^10)*(5*(5*t^10 - (140*t^9*t0)/ 9 + (65*t^8*t0^2)/4 - (40*t^7*t0^3)/7 + (5*t0^10)/ 252 - (310*t^9*t_f)/9 + (215/2)*t^8*t0*t_f - (790/7)*t^7*t0^2*t_f + 40*t^6*t0^3*t_f - (25*t0^9*t_f)/126 + (405*t^8*t_f^2)/4 - (2220/7)* t^7*t0*t_f^2 + 335*t^6*t0^2*t_f^2 - 120*t^5*t0^3*t_f^2 + (25*t0^8*t_f^2)/28 - (1150*t^7*t_f^3)/7 + (1550/3)*t^6*t0* t_f^3 - 550*t^5*t0^2*t_f^3 + 200*t^4*t0^3*t_f^3 - (50*t0^7*t_f^3)/21 + (475*t^6*t_f^4)/3 - 500*t^5*t0*t_f^4 + (1075/2)*t^4*t0^2*t_f^4 - 200*t^3*t0^3*t_f^4 + (25*t0^6*t_f^4)/6 - 90*t^5*t_f^5 + 285*t^4*t0*t_f^5 - 310*t^3*t0^2*t_f^5 + 120*t^2*t0^3*t_f^5 - 5*t0^5*t_f^5 + (55*t^4*t_f^6)/2 - (260/3)*t^3*t0*t_f^6 + 95*t^2*t0^2*t_f^6 - 40*t*t0^3*t_f^6 + (25*t0^4*t_f^6)/6 - (10*t^3*t_f^7)/3 + 10*t^2*t0*t_f^7 - 10*t*t0^2*t_f^7 + (10*t0^3*t_f^7)/3)*x1) - (1/(t0 - t_f)^10)*(5*(-10*t^10 + 40*t^9*t0 - 60*t^8*t0^2 + 40*t^7*t0^3 - 10*t^6*t0^4 + 60*t^9*t_f - 240*t^8*t0*t_f + 360*t^7*t0^2*t_f - 240*t^6*t0^3*t_f + 60*t^5*t0^4*t_f - 150*t^8*t_f^2 + 600*t^7*t0*t_f^2 - 900*t^6*t0^2*t_f^2 + 600*t^5*t0^3*t_f^2 - 150*t^4*t0^4*t_f^2 + 200*t^7*t_f^3 - 800*t^6*t0*t_f^3 + 1200*t^5*t0^2*t_f^3 - 800*t^4*t0^3*t_f^3 + 200*t^3*t0^4*t_f^3 - 150*t^6*t_f^4 + 600*t^5*t0*t_f^4 - 900*t^4*t0^2*t_f^4 + 600*t^3*t0^3*t_f^4 - 150*t^2*t0^4*t_f^4 + 60*t^5*t_f^5 - 240*t^4*t0*t_f^5 + 360*t^3*t0^2*t_f^5 - 240*t^2*t0^3*t_f^5 + 60*t*t0^4*t_f^5 - 10*t^4*t_f^6 + 40*t^3*t0*t_f^6 - 60*t^2*t0^2*t_f^6 + 40*t*t0^3*t_f^6 - 10*t0^4*t_f^6)*x2) - (1/(t0 - t_f)^10)*(5*(10*t^10 - (440*t^9*t0)/9 + 95*t^8*t0^2 - (640*t^7*t0^3)/7 + (130*t^6*t0^4)/3 - 8*t^5*t0^5 - t0^10/63 - (460*t^9*t_f)/9 + 250*t^8*t0*t_f - (3400/7)*t^7*t0^2*t_f + (1400/3)*t^6*t0^3*t_f - 220*t^5*t0^4*t_f + 40*t^4*t0^5*t_f + (10*t0^9*t_f)/63 + 105*t^8*t_f^2 - (3600/7)*t^7*t0*t_f^2 + 1000*t^6*t0^2*t_f^2 - 960*t^5*t0^3*t_f^2 + 450*t^4*t0^4*t_f^2 - 80*t^3*t0^5*t_f^2 - (5*t0^8*t_f^2)/7 - (760*t^7*t_f^3)/7 + (1600/3)*t^6*t0*t_f^3 - 1040*t^5*t0^2*t_f^3 + 1000*t^4*t0^3*t_f^3 - (1400/3)*t^3*t0^4*t_f^3 + 80*t^2*t0^5*t_f^3 + (40*t0^7*t_f^3)/21 + (170*t^6*t_f^4)/3 - 280*t^5*t0*t_f^4 + 550*t^4*t0^2*t_f^4 - (1600/3)*t^3*t0^3*t_f^4 + 250*t^2*t0^4*t_f^4 - 40*t*t0^5*t_f^4 - (10*t0^6*t_f^4)/3 - 12*t^5*t_f^5 + 60*t^4*t0*t_f^5 - 120*t^3*t0^2*t_f^5 + 120*t^2*t0^3*t_f^5 - 60*t*t0^4*t_f^5 + 12*t0^5*t_f^5)*x3) - (1/(t0 - t_f)^10)*(5*(-5*t^10 + (260*t^9*t0)/9 - (275*t^8*t0^2)/ 4 + (600*t^7*t0^3)/7 - (175*t^6*t0^4)/3 + 20*t^5*t0^5 - (5*t^4*t0^6)/2 - (5*t0^10)/252 + (190*t^9*t_f)/9 - (245/2)*t^8*t0*t_f + (2050/7)*t^7*t0^2* t_f - (1100/3)*t^6*t0^3*t_f + 250*t^5*t0^4*t_f - 85*t^4*t0^5*t_f + 10*t^3*t0^6*t_f + (25*t0^9*t_f)/126 - (135*t^8*t_f^2)/4 + (1380/7)*t^7*t0* t_f^2 - 475*t^6*t0^2*t_f^2 + 600*t^5*t0^3*t_f^2 - (825/2)*t^4*t0^4*t_f^2 + 140*t^3*t0^5*t_f^2 - 15*t^2*t0^6*t_f^2 - (25*t0^8*t_f^2)/28 + (170*t^7*t_f^3)/ 7 - (430/3)*t^6*t0*t_f^3 + 350*t^5*t0^2*t_f^3 - 450*t^4*t0^3*t_f^3 + (950/3)*t^3*t0^4*t_f^3 - 110*t^2*t0^5*t_f^3 + 10*t*t0^6*t_f^3 + (50*t0^7*t_f^3)/21 - (20*t^6*t_f^4)/3 + 40*t^5*t0*t_f^4 - 100*t^4*t0^2*t_f^4 + (400/3)*t^3*t0^3*t_f^4 - 100*t^2*t0^4*t_f^4 + 40*t*t0^5*t_f^4 - (20*t0^6*t_f^4)/3)* x4) - (1/(t0 - t_f)^10)*(5*(t^10 - (20*t^9*t0)/3 + (75*t^8*t0^2)/ 4 - (200*t^7*t0^3)/7 + 25*t^6*t0^4 - 12*t^5*t0^5 + (5*t^4*t0^6)/2 - t0^10/84 - (10*t^9*t_f)/3 + (45/2)*t^8*t0*t_f - (450/7)*t^7*t0^2*t_f + 100*t^6*t0^3*t_f - 90*t^5*t0^4*t_f + 45*t^4*t0^5*t_f - 10*t^3*t0^6*t_f + (5*t0^9*t_f)/42 + (15*t^8*t_f^2)/4 - (180/7)*t^7*t0*t_f^2 + 75*t^6*t0^2*t_f^2 - 120*t^5*t0^3*t_f^2 + (225/2)*t^4*t0^4*t_f^2 - 60*t^3*t0^5*t_f^2 + 15*t^2*t0^6*t_f^2 - (15*t0^8*t_f^2)/28 - (10*t^7*t_f^3)/7 + 10*t^6*t0*t_f^3 - 30*t^5*t0^2*t_f^3 + 50*t^4*t0^3*t_f^3 - 50*t^3*t0^4*t_f^3 + 30*t^2*t0^5*t_f^3 - 10*t*t0^6*t_f^3 + (10*t0^7*t_f^3)/7)*x5);
% coeffa3 = -((1/(t0 - t_f)^10)*(5*(t^10 - (10*t^9*t0)/3 + (15*t^8*t0^2)/4 - (10*t^7*t0^3)/7 + t0^10/84 - (20*t^9*t_f)/3 + (45/2)*t^8*t0*t_f - (180/7)*t^7*t0^2*t_f + 10*t^6*t0^3*t_f - (5*t0^9*t_f)/42 + (75*t^8*t_f^2)/4 - (450/7)*t^7*t0*t_f^2 + 75*t^6*t0^2*t_f^2 - 30*t^5*t0^3*t_f^2 + (15*t0^8*t_f^2)/28 - (200*t^7*t_f^3)/7 + 100*t^6*t0*t_f^3 - 120*t^5*t0^2*t_f^3 + 50*t^4*t0^3*t_f^3 - (10*t0^7*t_f^3)/7 + 25*t^6*t_f^4 - 90*t^5*t0*t_f^4 + (225/2)*t^4*t0^2*t_f^4 - 50*t^3*t0^3*t_f^4 + (5*t0^6*t_f^4)/2 - 12*t^5*t_f^5 + 45*t^4*t0*t_f^5 - 60*t^3*t0^2*t_f^5 + 30*t^2*t0^3*t_f^5 - 3*t0^5*t_f^5 + (5*t^4*t_f^6)/2 - 10*t^3*t0*t_f^6 + 15*t^2*t0^2*t_f^6 - 10*t*t0^3*t_f^6 + (5*t0^4*t_f^6)/2)*x0)) - (1/(t0 - t_f)^10)* (5*(-5*t^10 + (190*t^9*t0)/9 - (135*t^8*t0^2)/4 + (170*t^7*t0^3)/7 - (20*t^6*t0^4)/3 + (5*t0^10)/252 + (260*t^9*t_f)/9 - (245/2)*t^8*t0*t_f + (1380/7)*t^7*t0^2*t_f - (430/3)*t^6*t0^3*t_f + 40*t^5*t0^4*t_f - (25*t0^9*t_f)/126 - (275*t^8*t_f^2)/4 + (2050/7)*t^7*t0*t_f^2 - 475*t^6*t0^2*t_f^2 + 350*t^5*t0^3*t_f^2 - 100*t^4*t0^4*t_f^2 + (25*t0^8*t_f^2)/28 + (600*t^7*t_f^3)/7 - (1100/3)*t^6*t0*t_f^3 + 600*t^5*t0^2*t_f^3 - 450*t^4*t0^3*t_f^3 + (400/3)*t^3*t0^4*t_f^3 - (50*t0^7*t_f^3)/21 - (175*t^6*t_f^4)/3 + 250*t^5*t0*t_f^4 - (825/2)*t^4*t0^2*t_f^4 + (950/3)*t^3*t0^3*t_f^4 - 100*t^2*t0^4*t_f^4 + (25*t0^6*t_f^4)/6 + 20*t^5*t_f^5 - 85*t^4*t0*t_f^5 + 140*t^3*t0^2*t_f^5 - 110*t^2*t0^3*t_f^5 + 40*t*t0^4*t_f^5 - 5*t0^5*t_f^5 - (5*t^4*t_f^6)/2 + 10*t^3*t0*t_f^6 - 15*t^2*t0^2*t_f^6 + 10*t*t0^3*t_f^6 - (5*t0^4*t_f^6)/2)*x1) - (1/(t0 - t_f)^10)*(5*(10*t^10 - (460*t^9*t0)/9 + 105*t^8*t0^2 - (760*t^7*t0^3)/7 + (170*t^6*t0^4)/3 - 12*t^5*t0^5 + t0^10/63 - (440*t^9*t_f)/9 + 250*t^8*t0*t_f - (3600/7)*t^7*t0^2*t_f + (1600/3)*t^6*t0^3*t_f - 280*t^5*t0^4*t_f + 60*t^4*t0^5*t_f - (10*t0^9*t_f)/63 + 95*t^8*t_f^2 - (3400/7)*t^7*t0*t_f^2 + 1000*t^6*t0^2*t_f^2 - 1040*t^5*t0^3*t_f^2 + 550*t^4*t0^4*t_f^2 - 120*t^3*t0^5*t_f^2 + (5*t0^8*t_f^2)/7 - (640*t^7*t_f^3)/7 + (1400/3)*t^6*t0*t_f^3 - 960*t^5*t0^2*t_f^3 + 1000*t^4*t0^3*t_f^3 - (1600/3)*t^3*t0^4*t_f^3 + 120*t^2*t0^5*t_f^3 - (40*t0^7*t_f^3)/21 + (130*t^6*t_f^4)/3 - 220*t^5*t0*t_f^4 + 450*t^4*t0^2*t_f^4 - (1400/3)*t^3*t0^3*t_f^4 + 250*t^2*t0^4*t_f^4 - 60*t*t0^5*t_f^4 + (10*t0^6*t_f^4)/3 - 8*t^5*t_f^5 + 40*t^4*t0*t_f^5 - 80*t^3*t0^2*t_f^5 + 80*t^2*t0^3*t_f^5 - 40*t*t0^4*t_f^5 + 8*t0^5*t_f^5)*x2) - (1/(t0 - t_f)^10)* (5*(-10*t^10 + 60*t^9*t0 - 150*t^8*t0^2 + 200*t^7*t0^3 - 150*t^6*t0^4 + 60*t^5*t0^5 - 10*t^4*t0^6 + 40*t^9*t_f - 240*t^8*t0*t_f + 600*t^7*t0^2*t_f - 800*t^6*t0^3*t_f + 600*t^5*t0^4*t_f - 240*t^4*t0^5*t_f + 40*t^3*t0^6*t_f - 60*t^8*t_f^2 + 360*t^7*t0*t_f^2 - 900*t^6*t0^2*t_f^2 + 1200*t^5*t0^3*t_f^2 - 900*t^4*t0^4*t_f^2 + 360*t^3*t0^5*t_f^2 - 60*t^2*t0^6*t_f^2 + 40*t^7*t_f^3 - 240*t^6*t0*t_f^3 + 600*t^5*t0^2*t_f^3 - 800*t^4*t0^3*t_f^3 + 600*t^3*t0^4*t_f^3 - 240*t^2*t0^5*t_f^3 + 40*t*t0^6*t_f^3 - 10*t^6*t_f^4 + 60*t^5*t0*t_f^4 - 150*t^4*t0^2*t_f^4 + 200*t^3*t0^3*t_f^4 - 150*t^2*t0^4*t_f^4 + 60*t*t0^5*t_f^4 - 10*t0^6*t_f^4)*x3) - (1/(t0 - t_f)^10)*(5*(5*t^10 - (310*t^9*t0)/9 + (405*t^8*t0^2)/4 - (1150*t^7*t0^3)/7 + (475*t^6*t0^4)/3 - 90*t^5*t0^5 + (55*t^4*t0^6)/2 - (10*t^3*t0^7)/3 - (5*t0^10)/252 - (140*t^9*t_f)/9 + (215/2)*t^8*t0*t_f - (2220/7)*t^7*t0^2*t_f + (1550/3)*t^6*t0^3*t_f - 500*t^5*t0^4*t_f + 285*t^4*t0^5*t_f - (260/3)*t^3*t0^6*t_f + 10*t^2*t0^7*t_f + (25*t0^9*t_f)/126 + (65*t^8*t_f^2)/4 - (790/7)*t^7*t0*t_f^2 + 335*t^6*t0^2*t_f^2 - 550*t^5*t0^3*t_f^2 + (1075/2)*t^4*t0^4*t_f^2 - 310*t^3*t0^5*t_f^2 + 95*t^2*t0^6*t_f^2 - 10*t*t0^7*t_f^2 - (25*t0^8*t_f^2)/28 - (40*t^7*t_f^3)/7 + 40*t^6*t0*t_f^3 - 120*t^5*t0^2*t_f^3 + 200*t^4*t0^3*t_f^3 - 200*t^3*t0^4*t_f^3 + 120*t^2*t0^5*t_f^3 - 40*t*t0^6*t_f^3 + (40*t0^7*t_f^3)/7)*x4) - (1/(t0 - t_f)^10)*(5*(-t^10 + (70*t^9*t0)/9 - (105*t^8*t0^2)/4 + 50*t^7*t0^3 - (175*t^6*t0^4)/3 + 42*t^5*t0^5 - (35*t^4*t0^6)/2 + (10*t^3*t0^7)/3 - t0^10/36 + (20*t^9*t_f)/9 - (35/2)*t^8*t0*t_f + 60*t^7*t0^2*t_f - (350/3)*t^6*t0^3*t_f + 140*t^5*t0^4*t_f - 105*t^4*t0^5*t_f + (140/3)*t^3*t0^6*t_f - 10*t^2*t0^7*t_f + (5*t0^9*t_f)/18 - (5*t^8*t_f^2)/4 + 10*t^7*t0*t_f^2 - 35*t^6*t0^2*t_f^2 + 70*t^5*t0^3*t_f^2 - (175/2)*t^4*t0^4*t_f^2 + 70*t^3*t0^5*t_f^2 - 35*t^2*t0^6*t_f^2 + 10*t*t0^7*t_f^2 - (5*t0^8*t_f^2)/4)*x5);
% coeffa4 = -((1/(t0 - t_f)^10)*(5*(-(t^10/2) + (20*t^9*t0)/9 - (15*t^8*t0^2)/4 + (20*t^7*t0^3)/7 - (5*t^6*t0^4)/6 + t0^10/252 + (25*t^9*t_f)/9 - (25/2)*t^8*t0*t_f + (150/7)*t^7*t0^2*t_f - (50/3)*t^6* t0^3*t_f + 5*t^5*t0^4*t_f - (5*t0^9*t_f)/126 - (25*t^8*t_f^2)/4 + (200/7)*t^7*t0*t_f^2 - 50*t^6*t0^2*t_f^2 + 40*t^5*t0^3*t_f^2 - (25/2)*t^4*t0^4*t_f^2 + (5*t0^8*t_f^2)/28 + (50*t^7*t_f^3)/ 7 - (100/3)*t^6*t0*t_f^3 + 60*t^5*t0^2*t_f^3 - 50*t^4*t0^3*t_f^3 + (50/3)*t^3*t0^4*t_f^3 - (10*t0^7*t_f^3)/ 21 - (25*t^6*t_f^4)/6 + 20*t^5*t0*t_f^4 - (75/2)*t^4*t0^2*t_f^4 + (100/3)*t^3*t0^3* t_f^4 - (25/2)*t^2*t0^4*t_f^4 + (5*t0^6*t_f^4)/6 + t^5*t_f^5 - 5*t^4*t0*t_f^5 + 10*t^3*t0^2*t_f^5 - 10*t^2*t0^3*t_f^5 + 5*t*t0^4*t_f^5 - t0^5*t_f^5)*x0)) - (1/(t0 - t_f)^10)* (5*((5*t^10)/2 - (40*t^9*t0)/3 + (115*t^8*t0^2)/4 - (220*t^7*t0^3)/7 + (35*t^6*t0^4)/2 - 4*t^5*t0^5 + t0^10/84 - (35*t^9*t_f)/3 + (125/2)*t^8*t0*t_f - (950/7)*t^7*t0^2*t_f + 150*t^6*t0^3*t_f - 85*t^5*t0^4*t_f + 20*t^4*t0^5*t_f - (5*t0^9*t_f)/42 + (85*t^8*t_f^2)/4 - (800/7)*t^7*t0*t_f^2 + 250*t^6*t0^2*t_f^2 - 280*t^5*t0^3*t_f^2 + (325/2)*t^4*t0^4*t_f^2 - 40*t^3*t0^5*t_f^2 + (15*t0^8*t_f^2)/28 - (130*t^7*t_f^3)/7 + 100*t^6*t0*t_f^3 - 220*t^5*t0^2*t_f^3 + 250*t^4*t0^3*t_f^3 - 150*t^3*t0^4*t_f^3 + 40*t^2*t0^5*t_f^3 - (10*t0^7*t_f^3)/7 + (15*t^6*t_f^4)/2 - 40*t^5*t0*t_f^4 + (175/2)*t^4*t0^2*t_f^4 - 100*t^3*t0^3*t_f^4 + (125/2)*t^2*t0^4*t_f^4 - 20*t*t0^5*t_f^4 + (5*t0^6*t_f^4)/2 - t^5*t_f^5 + 5*t^4*t0*t_f^5 - 10*t^3*t0^2*t_f^5 + 10*t^2*t0^3*t_f^5 - 5*t*t0^4*t_f^5 + t0^5*t_f^5)*x1) - (1/(t0 - t_f)^10)*(5*(-5*t^10 + (280*t^9*t0)/9 - (325*t^8*t0^2)/4 + (800*t^7*t0^3)/7 - (275*t^6*t0^4)/3 + 40*t^5*t0^5 - (15*t^4*t0^6)/2 + (5*t0^10)/252 + (170*t^9*t_f)/9 - (235/2)*t^8*t0*t_f + (2150/7)*t^7*t0^2*t_f - (1300/3)*t^6* t0^3*t_f + 350*t^5*t0^4*t_f - 155*t^4*t0^5*t_f + 30*t^3*t0^6*t_f - (25*t0^9*t_f)/126 - (105*t^8*t_f^2)/4 + (1140/7)*t^7*t0* t_f^2 - 425*t^6*t0^2*t_f^2 + 600*t^5*t0^3*t_f^2 - (975/2)*t^4*t0^4*t_f^2 + 220*t^3*t0^5*t_f^2 - 45*t^2*t0^6*t_f^2 + (25*t0^8*t_f^2)/28 + (110*t^7*t_f^3)/7 - (290/3)*t^6*t0*t_f^3 + 250*t^5*t0^2*t_f^3 - 350*t^4*t0^3*t_f^3 + (850/3)*t^3*t0^4*t_f^3 - 130*t^2*t0^5*t_f^3 + 30*t*t0^6*t_f^3 - (50*t0^7*t_f^3)/21 - (10*t^6*t_f^4)/3 + 20*t^5*t0*t_f^4 - 50*t^4*t0^2*t_f^4 + (200/3)*t^3*t0^3*t_f^4 - 50*t^2*t0^4*t_f^4 + 20*t*t0^5*t_f^4 - (10*t0^6*t_f^4)/3)*x2) - (1/(t0 - t_f)^10)*(5*(5*t^10 - (320*t^9*t0)/9 + (435*t^8*t0^2)/4 - (1300*t^7*t0^3)/7 + (575*t^6*t0^4)/3 - 120*t^5*t0^5 + (85*t^4*t0^6)/2 - (20*t^3*t0^7)/3 + (5*t0^10)/252 - (130*t^9*t_f)/9 + (205/2)*t^8*t0*t_f - (2190/7)*t^7*t0^2*t_f + (1600/3)*t^6*t0^3*t_f - 550*t^5*t0^4*t_f + 345*t^4*t0^5*t_f - (370/3)*t^3*t0^6*t_f + 20*t^2*t0^7*t_f - (25*t0^9*t_f)/126 + (55*t^8*t_f^2)/4 - (680/7)*t^7*t0*t_f^2 + 295*t^6*t0^2*t_f^2 - 500*t^5*t0^3*t_f^2 + (1025/2)*t^4*t0^4*t_f^2 - 320*t^3*t0^5*t_f^2 + 115*t^2*t0^6*t_f^2 - 20*t*t0^7*t_f^2 + (25*t0^8*t_f^2)/28 - (30*t^7*t_f^3)/7 + 30*t^6*t0*t_f^3 - 90*t^5*t0^2*t_f^3 + 150*t^4*t0^3*t_f^3 - 150*t^3*t0^4*t_f^3 + 90*t^2*t0^5*t_f^3 - 30*t*t0^6*t_f^3 + (30*t0^7*t_f^3)/7)*x3) - (1/(t0 - t_f)^10)*(5*(-((5*t^10)/2) + 20*t^9*t0 - 70*t^8*t0^2 + 140*t^7*t0^3 - 175*t^6*t0^4 + 140*t^5*t0^5 - 70*t^4*t0^6 + 20*t^3*t0^7 - (5*t^2*t0^8)/2 + 5*t^9*t_f - 40*t^8*t0*t_f + 140*t^7*t0^2*t_f - 280*t^6*t0^3*t_f + 350*t^5*t0^4*t_f - 280*t^4*t0^5*t_f + 140*t^3*t0^6*t_f - 40*t^2*t0^7*t_f + 5*t*t0^8*t_f - (5*t^8*t_f^2)/2 + 20*t^7*t0*t_f^2 - 70*t^6*t0^2*t_f^2 + 140*t^5*t0^3*t_f^2 - 175*t^4*t0^4*t_f^2 + 140*t^3*t0^5*t_f^2 - 70*t^2*t0^6*t_f^2 + 20*t*t0^7*t_f^2 - (5*t0^8*t_f^2)/2)*x4) - (1/(t0 - t_f)^10)* (5*(t^10/2 - (40*t^9*t0)/9 + (35*t^8*t0^2)/2 - 40*t^7*t0^3 + (175*t^6*t0^4)/3 - 56*t^5*t0^5 + 35*t^4*t0^6 - (40*t^3*t0^7)/3 + (5*t^2*t0^8)/2 - t0^10/18 - (5*t^9*t_f)/9 + 5*t^8*t0*t_f - 20*t^7*t0^2*t_f + (140/3)*t^6*t0^3*t_f - 70*t^5*t0^4*t_f + 70*t^4*t0^5*t_f - (140/3)*t^3*t0^6*t_f + 20*t^2*t0^7*t_f - 5*t*t0^8*t_f + (5*t0^9*t_f)/9)*x5);
% coeffa5 = -((1/(t0 - t_f)^10)*(5*(t^10/10 - (5*t^9*t0)/9 + (5*t^8*t0^2)/4 - (10*t^7*t0^3)/7 + (5*t^6*t0^4)/6 - (t^5*t0^5)/5 + t0^10/1260 - (4*t^9*t_f)/9 + (5/2)*t^8*t0*t_f - (40/7)*t^7*t0^2*t_f + (20/3)*t^6*t0^3*t_f - 4*t^5*t0^4*t_f + t^4*t0^5*t_f - (t0^9*t_f)/126 + (3*t^8*t_f^2)/4 - (30/7)*t^7*t0*t_f^2 + 10*t^6*t0^2*t_f^2 - 12*t^5*t0^3*t_f^2 + (15/2)*t^4*t0^4*t_f^2 - 2*t^3*t0^5*t_f^2 + (t0^8*t_f^2)/28 - (4*t^7*t_f^3)/7 + (10/3)*t^6*t0*t_f^3 - 8*t^5*t0^2*t_f^3 + 10*t^4*t0^3*t_f^3 - (20/3)*t^3*t0^4*t_f^3 + 2*t^2*t0^5*t_f^3 - (2*t0^7*t_f^3)/21 + (t^6*t_f^4)/6 - t^5*t0*t_f^4 + (5/2)*t^4*t0^2*t_f^4 - (10/3)*t^3*t0^3*t_f^4 + (5/2)*t^2*t0^4*t_f^4 - t*t0^5*t_f^4 + (t0^6*t_f^4)/6)*x0)) - (1/(t0 - t_f)^10)* (5*(-(t^10/2) + (29*t^9*t0)/9 - (35*t^8*t0^2)/4 + (90*t^7*t0^3)/ 7 - (65*t^6*t0^4)/6 + 5*t^5*t0^5 - t^4*t0^6 + t0^10/252 + (16*t^9*t_f)/9 - (23/2)*t^8*t0*t_f + (220/7)*t^7*t0^2*t_f - (140/3)*t^6*t0^3*t_f + 40*t^5*t0^4*t_f - 19*t^4*t0^5*t_f + 4*t^3*t0^6*t_f - (5*t0^9*t_f)/126 - (9*t^8*t_f^2)/4 + (102/7)*t^7*t0*t_f^2 - 40*t^6*t0^2*t_f^2 + 60*t^5*t0^3*t_f^2 - (105/2)*t^4*t0^4*t_f^2 + 26*t^3*t0^5*t_f^2 - 6*t^2*t0^6*t_f^2 + (5*t0^8*t_f^2)/28 + (8*t^7*t_f^3)/7 - (22/3)*t^6*t0*t_f^3 + 20*t^5*t0^2*t_f^3 - 30*t^4*t0^3*t_f^3 + (80/3)*t^3*t0^4*t_f^3 - 14*t^2*t0^5*t_f^3 + 4*t*t0^6*t_f^3 - (10*t0^7*t_f^3)/21 - (t^6*t_f^4)/6 + t^5*t0*t_f^4 - (5/2)*t^4*t0^2*t_f^4 + (10/3)*t^3*t0^3*t_f^4 - (5/2)*t^2*t0^4*t_f^4 + t*t0^5*t_f^4 - (t0^6*t_f^4)/6)*x1) - (1/(t0 - t_f)^10)* (5*(t^10 - (22*t^9*t0)/3 + (93*t^8*t0^2)/4 - (290*t^7*t0^3)/7 + 45*t^6*t0^4 - 30*t^5*t0^5 + (23*t^4*t0^6)/2 - 2*t^3*t0^7 + t0^10/84 - (8*t^9*t_f)/3 + (39/2)*t^8*t0*t_f - (432/7)*t^7*t0^2*t_f + 110*t^6*t0^3*t_f - 120*t^5*t0^4*t_f + 81*t^4*t0^5*t_f - 32*t^3*t0^6*t_f + 6*t^2*t0^7*t_f - (5*t0^9*t_f)/42 + (9*t^8*t_f^2)/4 - (114/7)*t^7*t0*t_f^2 + 51*t^6*t0^2*t_f^2 - 90*t^5*t0^3*t_f^2 + (195/2)*t^4*t0^4*t_f^2 - 66*t^3*t0^5*t_f^2 + 27*t^2*t0^6*t_f^2 - 6*t*t0^7*t_f^2 + (15*t0^8*t_f^2)/28 - (4*t^7*t_f^3)/7 + 4*t^6*t0*t_f^3 - 12*t^5*t0^2*t_f^3 + 20*t^4*t0^3*t_f^3 - 20*t^3*t0^4*t_f^3 + 12*t^2*t0^5*t_f^3 - 4*t*t0^6*t_f^3 + (4*t0^7*t_f^3)/7)*x2) - (1/(t0 - t_f)^10)*(5*(-t^10 + (74*t^9*t0)/9 - (119*t^8*t0^2)/4 + 62*t^7*t0^3 - (245*t^6*t0^4)/3 + 70*t^5*t0^5 - (77*t^4*t0^6)/2 + (38*t^3*t0^7)/3 - 2*t^2*t0^8 + t0^10/36 + (16*t^9*t_f)/9 - (29/2)*t^8*t0*t_f + 52*t^7*t0^2*t_f - (322/3)*t^6*t0^3*t_f + 140*t^5*t0^4*t_f - 119*t^4*t0^5*t_f + (196/3)*t^3*t0^6*t_f - 22*t^2*t0^7*t_f + 4*t*t0^8*t_f - (5*t0^9*t_f)/18 - (3*t^8*t_f^2)/4 + 6*t^7*t0*t_f^2 - 21*t^6*t0^2*t_f^2 + 42*t^5*t0^3*t_f^2 - (105/2)*t^4*t0^4*t_f^2 + 42*t^3*t0^5*t_f^2 - 21*t^2*t0^6*t_f^2 + 6*t*t0^7*t_f^2 - (3*t0^8*t_f^2)/4)*x3) - (1/(t0 - t_f)^10)*(5*(t^10/2 - (41*t^9*t0)/9 + (37*t^8*t0^2)/2 - 44*t^7*t0^3 + (203*t^6*t0^4)/3 - 70*t^5*t0^5 + 49*t^4*t0^6 - (68*t^3*t0^7)/3 + (13*t^2*t0^8)/2 - t*t0^9 + t0^10/18 - (4*t^9*t_f)/9 + 4*t^8*t0*t_f - 16*t^7*t0^2*t_f + (112/3)*t^6*t0^3*t_f - 56*t^5*t0^4*t_f + 56*t^4*t0^5*t_f - (112/3)*t^3*t0^6*t_f + 16*t^2*t0^7*t_f - 4*t*t0^8*t_f + (4*t0^9*t_f)/9)*x4) - (1/(t0 - t_f)^10)* (5*(-(t^10/10) + t^9*t0 - (9*t^8*t0^2)/2 + 12*t^7*t0^3 - 21*t^6*t0^4 + (126*t^5*t0^5)/5 - 21*t^4*t0^6 + 12*t^3*t0^7 - (9*t^2*t0^8)/2 + t*t0^9 - t0^10/10)*x5);
global coeffa0 coeffa1 coeffa2 coeffa3 coeffa4 coeffa5;
syms X0 X1 X2 X3 X4 X5;
coeffa0 = subs(coeffa0, [X0, X1, X2, X3, X4, X5], [x0, x1, x2, x3, x4, x5]);
coeffa1 = subs(coeffa1, [X0, X1, X2, X3, X4, X5], [x0, x1, x2, x3, x4, x5]);
coeffa2 = subs(coeffa2, [X0, X1, X2, X3, X4, X5], [x0, x1, x2, x3, x4, x5]);
coeffa3 = subs(coeffa3, [X0, X1, X2, X3, X4, X5], [x0, x1, x2, x3, x4, x5]);
coeffa4 = subs(coeffa4, [X0, X1, X2, X3, X4, X5], [x0, x1, x2, x3, x4, x5]);
coeffa5 = subs(coeffa5, [X0, X1, X2, X3, X4, X5], [x0, x1, x2, x3, x4, x5]);
% coeffa1, coeffa2, coeffa3, coeffa4, coeffa5;
y = coeffa0*k0 + coeffa1*k1 + coeffa2*k2 + coeffa3*k3 + coeffa4*k4 + coeffa5*k5;
A1_plot = 3.5*0.50;
a1_plot = 0.50;
B1_plot = 3.5*0.50;
b1_plot = 0.50;
% x
y
x
Z = A1_plot*sin(a1_plot*x) + B1_plot*cos(b1_plot*y)
% X = [x; y; alpha];
% X;
% %what follows is wrong! :\. c is to be in terms of the input parameters of
% %the nonlcon function, i.e. req_coeff. 
% c = [];

% global interp_aj3;

% for u=t0:t_f,
% 	x_curr = double(subs(x, t, u));
% 	y_curr = double(subs(y, t, u));
% 	for i = 1:4,
%     	if (x_curr >= 0) && (x_curr <= 10) && (y_curr >= 0) && (y_curr <= 10)
% 	    	alpha_curr = double(subs(alpha, t, u));
%     		aj3_curr = interp_aj3{i}(x_curr, y_curr, alpha_curr);
% 	   	else
%     		aj3_curr = 0;
%         end
%         c = [c; -aj3_curr];
%     end
%     c = [c; -x_curr; -y_curr; x_curr - 10; y_curr - 10;];   % multiply by -1 coz c<0
% end
% % c
% % %make x y and alpha as anon func?
% % %Anonymous functions return just one output.
% % % So how can you write an anonymous function as a nonlinear constraint?
% % %The deal function distributes multiple outputs.

% % c = [];
% xinitial = 0;
% xfinal = 10;
% yinitial = 0;
% yfinal = 10;
% % i = 1
% % weights = importdata(strcat('weights', int2str(i), '.dat'));
% %     b2 = weights.b{2};
% %     b1 = weights.b{1};
% %     IW = weights.IW{1};
% %     LW = weights.LW{2};
% % for i = xinitial:0.1:xfinal,
% % 	S = double(solve([x == i], [t]));
% % 	double(S(1))
% % 	c_curr = double(subs(-1*(b2 + LW*tanh(b1+IW*X)), t, S(1)));
% % 	c = [c; c_curr];

% 	% S(S == real(S))
% 	% S.t
% % end
% % %coeffa0*k0;
% % %coeffa1*k1;
% % % subs(y, t, t0);
% % ceq = [double(subs(x, t, t0) - xinitial);  double(subs(x, t, t_f) - xfinal); double(subs(y, t, t0) - yinitial); double(subs(y, t, t_f) - yfinal)]
% % % 
% % %  x
% % %  y
% % % alpha

% % % req_coeff
% % %coeffa0*k0;
% % %coeffa1*k1;
% % % subs(y, t, t0);
% % ceq = [double(subs(x, t, t0) - xinitial);  double(subs(x, t, t_f) - xfinal); double(subs(y, t, t0) - yinitial);  double(subs(y, t, t_f) - yfinal)]
% % % 
% % %  x
% % %  y
% % % alpha

% % % req_coeff'	
