function [f] = generate_aj3(terrain_eqn)

% xt = inp(1);
% yt = inp(2);
% alphat = inp(3);
% xtdot = inp(4); %try to eliminate the dependency 

xtdot = 1
syms x y;
f = [];
for alphat = -3.14:1.57:3.14
 for xt = 0:1:10
     for yt = 0:1:10
            % for xtdot = -1:0.5:1
%    f= zeros(4);
% f = f';

% syms x

%  xt =2
%   yt = 2
%  alphat = 3
%   xtdot = 3; %try to eliminate the dependency 
% 
% alphat = 0;
% xtdot = 0;

% A1 = 3.5*0.30;
% a1 = 0.40;
% B1 = 3.5*0.30;
% b1 = 0.30;
% A1sin(a1x) + B1cos(b2x)
%%%%%%%%%%%%%% surface equation
A1 = 3.5*0.50;
a1 = 0.50;
B1 = 3.5*0.50;
b1 = 0.50;


h = 1200/2000;
w = 1200/2000;
l = 0.4;

% xch = x1;
% ych = y1;
% 
% xch = x1;
% ych = y1;


k3 = subs(terrain_eqn, [x, y], [xt, yt]);
% k3 = A1*cos(a1*xt)+B1*sin(b1*yt)-(-A1*a1*sin(a1*xt)*xt+B1*b1*cos(b1*yt)*yt);
% error. This is WRONG (7). k3 = A1*cos(a1*xt)+B1*sin(b1*yt)

k1 = -A1*a1*sin(a1*xt);

k2 = B1*b1*cos(b1*yt);

gamma = k2*cos(alphat)-k1*sin(alphat);

beta = -k1*cos(alphat)-k2*sin(alphat);
%to check. f2 and f3. eqn (15)


vel1 = xtdot/(cos(alphat)*cos(beta));
%kya? (out of aukat)

p1 = k1*l*sin(alphat)-k2*l*cos(alphat);

q1 = k1*l*cos(alphat)+k2*l*sin(alphat);

zt = 2*k1*w*sin(alphat)-2*k2*w*cos(alphat)-k1^2*l+2*k1^2*l*cos(alphat)^2+4*k1*l*sin(alphat)*k2*cos(alphat)-2*k2^2*l*cos(alphat)^2+k2^2*l+k1*xt+k2*yt+k3+l;
 % f1. BHAI! CHECK THIS DERIVATION. SOLVE EQUATION (15)

xc1 = xt - w*sin(alphat)-l*sin(alphat)*gamma-h*cos(alphat)-l*cos(alphat)*beta;
%ERROR . eqn 6 says for i =1 , del = +1, shouldn't it be "+h* beta"?

yc1 = yt-h*sin(alphat)-l*sin(alphat)*beta+w*cos(alphat)+l*cos(alphat)*gamma;


zc1 = zt+h*beta-l+w*gamma;
%ERROR . eqn 6 says for i =1 , del = +1, shouldn't it be "+h* beta"?

X1 = xc1;
Y1 = yc1;
Z1 = zc1;

%fxi's are contact normals, ERROR

% fx1 = -A1*sin(a1*X1)*a1/(1+A1^2*sin(a1*X1)^2*a1^2+A1^2*cos(b1*Y1)^2*b1^2)^(1/2);
fx1 = -a1*A1*sin(a1*X1)/(1 + ((a1*A1*sin(a1*X1))^2) + ((b1*B1*cos(b1*Y1)^2)))^(1/2);
 % fx1 = k1/(1 + (k1^2) + (k2^2))^(1/2) 

 
 
% fy1 = A1*cos(b1*Y1)*b1/(1+A1^2*sin(a1*X1)^2*a1^2+A1^2*cos(b1*Y1)^2*b1^2)^(1/2);
fy1 = b1*B1*cos(a1*X1)/(1 + ((a1*A1*sin(a1*X1))^2) + ((b1*B1*cos(b1*Y1)^2)))^(1/2);

 
 
% fz1 = -1/(1+A1^2*sin(a1*X1)^2*a1^2+A1^2*cos(b1*Y1)^2*b1^2)^(1/2);
fz1 = -1 / (1 + ((a1*A1*sin(a1*X1))^2) + ((b1*B1*cos(b1*Y1)^2)))^(1/2);
 
xc2 = xt-w*sin(alphat)-l*sin(alphat)*gamma+h*cos(alphat)-l*cos(alphat)*beta;
yc2 = yt+h*sin(alphat)-l*sin(alphat)*beta+w*cos(alphat)+l*cos(alphat)*gamma;

zc2 = zt-h*beta-l+w*gamma;
X2 = xc2;
Y2 = yc2;
Z2 = zc2;

fx2 = -A1*sin(a1*X2)*a1/(1 + ((a1*A1*sin(a1*X2))^2) + ((b1*B1*cos(b1*Y2)^2)))^(1/2) ;
 
 
 
fy2 = B1*cos(b1*Y2)*b1/(1 + ((a1*A1*sin(a1*X2))^2) + ((b1*B1*cos(b1*Y2)^2)))^(1/2) ;
 
 
 
fz2 = -1/(1 + ((a1*A1*sin(a1*X2))^2) + ((b1*B1*cos(b1*Y2)^2)))^(1/2) ;
 
 
xc3 = xt+w*sin(alphat)-l*sin(alphat)+h*cos(alphat)-l*cos(alphat)*beta;
yc3 = yt+h*sin(alphat)-l*sin(alphat)*beta-w*cos(alphat)+l*cos(alphat)*gamma;

zc3 = zt-h*beta-l-w*gamma;


X3 = xc3;
Y3 = yc3;
Z3 = zc3;

fx3 = -A1*sin(a1*X3)*a1/(1 + ((a1*A1*sin(a1*X3))^2) + ((b1*B1*cos(b1*Y3)^2)))^(1/2) ;
 
 
 
fy3 = B1*cos(b1*Y3)*b1/(1 + ((a1*A1*sin(a1*X3))^2) + ((b1*B1*cos(b1*Y3)^2)))^(1/2) ;
 
 
 
fz3 = -1/(1 + ((a1*A1*sin(a1*X3))^2) + ((b1*B1*cos(b1*Y3)^2)))^(1/2) ;
 
 
 
 
xc4 = xt+w*sin(alphat)-l*sin(alphat)*gamma-h*cos(alphat)-l*cos(alphat)*beta;

yc4 = yt-h*sin(alphat)-l*sin(alphat)*beta-w*cos(alphat)+l*cos(alphat)*gamma;

zc4 = zt+h*sin(beta)-l-w*gamma;


X4 = xc4;
Y4 = yc4;
Z4 = zc4;

fx4 = -A1*sin(a1*X4)*a1/(1 + ((a1*A1*sin(a1*X4))^2) + ((b1*B1*cos(b1*Y4)^2)))^(1/2) ;
 
 
 
fy4 = B1*cos(b1*Y4)*b1/(1 + ((a1*A1*sin(a1*X4))^2) + ((b1*B1*cos(b1*Y4)^2)))^(1/2) ;
 
 
 
fz4 = -1/(1 + ((a1*A1*sin(a1*X4))^2) + ((b1*B1*cos(b1*Y4)^2)))^(1/2) ;
 
 
 


c1=cos(gamma);
c2=cos(beta);
c3=cos(alphat);

s1=sin(gamma);
s2=sin(beta);
s3=sin(alphat);

%ERROR : why negate fz1 ?!
nx1 = fx1;
ny1 = fy1;
nz1 = -fz1;


nx2 = fx2;
ny2 = fy2;
nz2 = -fz2;



nx3 = fx3;
ny3 = fy3;
nz3 = -fz3;



nx4 = fx4;
ny4 = fy4;
nz4 = -fz4;

 % Doubt : How?
 
tz1 = -(ny1*s3*c1-ny1*c3*s2*s1+nx1*c3*c1+nx1*s3*s2*s1)/(nz1^2*c3^2*c1^2-2*nz1*c3*c1*c2*s1*ny1+nz1^2*s3^2*s2^2*s1^2-2*nz1*s3*s2*s1^2*c2*ny1+c2^2*s1^2*ny1^2+c2^2*s1^2*nx1^2+2*c2*s1*nx1*nz1*s3*c1-2*c2*s1^2*nx1*nz1*c3*s2+nz1^2*s3^2*c1^2+nz1^2*c3^2*s2^2*s1^2+ny1^2*s3^2*c1^2-2*ny1^2*s3*c1*c3*s2*s1+2*ny1*s3*c1^2*nx1*c3+2*ny1*s3^2*c1*nx1*s2*s1+ny1^2*c3^2*s2^2*s1^2-2*ny1*c3^2*s2*s1*nx1*c1-2*ny1*c3*s2^2*s1^2*nx1*s3+nx1^2*c3^2*c1^2+2*nx1^2*c3*c1*s3*s2*s1+nx1^2*s3^2*s2^2*s1^2)^(1/2);
 
tz2 = -(ny2*s3*c1-ny2*c3*s2*s1+nx2*c3*c1+nx2*s3*s2*s1)/(nz2^2*c3^2*c1^2-2*nz2*c3*c1*c2*s1*ny2+nz2^2*s3^2*s2^2*s1^2-2*nz2*s3*s2*s1^2*c2*ny2+c2^2*s1^2*ny2^2+c2^2*s1^2*nx2^2+2*c2*s1*nx2*nz2*s3*c1-2*c2*s1^2*nx2*nz2*c3*s2+nz2^2*s3^2*c1^2+nz2^2*c3^2*s2^2*s1^2+ny2^2*s3^2*c1^2-2*ny2^2*s3*c1*c3*s2*s1+2*ny2*s3*c1^2*nx2*c3+2*ny2*s3^2*c1*nx2*s2*s1+ny2^2*c3^2*s2^2*s1^2-2*ny2*c3^2*s2*s1*nx2*c1-2*ny2*c3*s2^2*s1^2*nx2*s3+nx2^2*c3^2*c1^2+2*nx2^2*c3*c1*s3*s2*s1+nx2^2*s3^2*s2^2*s1^2)^(1/2);
 
tz3 = -(ny3*s3*c1-ny3*c3*s2*s1+nx3*c3*c1+nx3*s3*s2*s1)/(nz3^2*c3^2*c1^2-2*nz3*c3*c1*c2*s1*ny3+nz3^2*s3^2*s2^2*s1^2-2*nz3*s3*s2*s1^2*c2*ny3+c2^2*s1^2*ny3^2+c2^2*s1^2*nx3^2+2*c2*s1*nx3*nz3*s3*c1-2*c2*s1^2*nx3*nz3*c3*s2+nz3^2*s3^2*c1^2+nz3^2*c3^2*s2^2*s1^2+ny3^2*s3^2*c1^2-2*ny3^2*s3*c1*c3*s2*s1+2*ny3*s3*c1^2*nx3*c3+2*ny3*s3^2*c1*nx3*s2*s1+ny3^2*c3^2*s2^2*s1^2-2*ny3*c3^2*s2*s1*nx3*c1-2*ny3*c3*s2^2*s1^2*nx3*s3+nx3^2*c3^2*c1^2+2*nx3^2*c3*c1*s3*s2*s1+nx3^2*s3^2*s2^2*s1^2)^(1/2);

tz4 = -(ny4*s3*c1-ny4*c3*s2*s1+nx4*c3*c1+nx4*s3*s2*s1)/(nz4^2*c3^2*c1^2-2*nz4*c3*c1*c2*s1*ny4+nz4^2*s3^2*s2^2*s1^2-2*nz4*s3*s2*s1^2*c2*ny4+c2^2*s1^2*ny4^2+c2^2*s1^2*nx4^2+2*c2*s1*nx4*nz4*s3*c1-2*c2*s1^2*nx4*nz4*c3*s2+nz4^2*s3^2*c1^2+nz4^2*c3^2*s2^2*s1^2+ny4^2*s3^2*c1^2-2*ny4^2*s3*c1*c3*s2*s1+2*ny4*s3*c1^2*nx4*c3+2*ny4*s3^2*c1*nx4*s2*s1+ny4^2*c3^2*s2^2*s1^2-2*ny4*c3^2*s2*s1*nx4*c1-2*ny4*c3*s2^2*s1^2*nx4*s3+nx4^2*c3^2*c1^2+2*nx4^2*c3*c1*s3*s2*s1+nx4^2*s3^2*s2^2*s1^2)^(1/2);
tx1 =((c3*c1+s3*s2*s1)*nz1-c2*s1*ny1)/(nz1^2*c3^2*c1^2-2*nz1*c3*c1*c2*s1*ny1+nz1^2*s3^2*s2^2*s1^2-2*nz1*s3*s2*s1^2*c2*ny1+c2^2*s1^2*ny1^2+c2^2*s1^2*nx1^2+2*c2*s1*nx1*nz1*s3*c1-2*c2*s1^2*nx1*nz1*c3*s2+nz1^2*s3^2*c1^2+nz1^2*c3^2*s2^2*s1^2+ny1^2*s3^2*c1^2-2*ny1^2*s3*c1*c3*s2*s1+2*ny1*s3*c1^2*nx1*c3+2*ny1*s3^2*c1*nx1*s2*s1+ny1^2*c3^2*s2^2*s1^2-2*ny1*c3^2*s2*s1*nx1*c1-2*ny1*c3*s2^2*s1^2*nx1*s3+nx1^2*c3^2*c1^2+2*nx1^2*c3*c1*s3*s2*s1+nx1^2*s3^2*s2^2*s1^2)^(1/2);
ty1 = (c2*s1*nx1-(-s3*c1+c3*s2*s1)*nz1)/(nz1^2*c3^2*c1^2-2*nz1*c3*c1*c2*s1*ny1+nz1^2*s3^2*s2^2*s1^2-2*nz1*s3*s2*s1^2*c2*ny1+c2^2*s1^2*ny1^2+c2^2*s1^2*nx1^2+2*c2*s1*nx1*nz1*s3*c1-2*c2*s1^2*nx1*nz1*c3*s2+nz1^2*s3^2*c1^2+nz1^2*c3^2*s2^2*s1^2+ny1^2*s3^2*c1^2-2*ny1^2*s3*c1*c3*s2*s1+2*ny1*s3*c1^2*nx1*c3+2*ny1*s3^2*c1*nx1*s2*s1+ny1^2*c3^2*s2^2*s1^2-2*ny1*c3^2*s2*s1*nx1*c1-2*ny1*c3*s2^2*s1^2*nx1*s3+nx1^2*c3^2*c1^2+2*nx1^2*c3*c1*s3*s2*s1+nx1^2*s3^2*s2^2*s1^2)^(1/2);

tx2 = ((c3*c1+s3*s2*s1)*nz2-c2*s1*ny2)/(nz2^2*c3^2*c1^2-2*nz2*c3*c1*c2*s1*ny2+nz2^2*s3^2*s2^2*s1^2-2*nz2*s3*s2*s1^2*c2*ny2+c2^2*s1^2*ny2^2+c2^2*s1^2*nx2^2+2*c2*s1*nx2*nz2*s3*c1-2*c2*s1^2*nx2*nz2*c3*s2+nz2^2*s3^2*c1^2+nz2^2*c3^2*s2^2*s1^2+ny2^2*s3^2*c1^2-2*ny2^2*s3*c1*c3*s2*s1+2*ny2*s3*c1^2*nx2*c3+2*ny2*s3^2*c1*nx2*s2*s1+ny2^2*c3^2*s2^2*s1^2-2*ny2*c3^2*s2*s1*nx2*c1-2*ny2*c3*s2^2*s1^2*nx2*s3+nx2^2*c3^2*c1^2+2*nx2^2*c3*c1*s3*s2*s1+nx2^2*s3^2*s2^2*s1^2)^(1/2);
ty2 =(c2*s1*nx2-(-s3*c1+c3*s2*s1)*nz2)/(nz2^2*c3^2*c1^2-2*nz2*c3*c1*c2*s1*ny2+nz2^2*s3^2*s2^2*s1^2-2*nz2*s3*s2*s1^2*c2*ny2+c2^2*s1^2*ny2^2+c2^2*s1^2*nx2^2+2*c2*s1*nx2*nz2*s3*c1-2*c2*s1^2*nx2*nz2*c3*s2+nz2^2*s3^2*c1^2+nz2^2*c3^2*s2^2*s1^2+ny2^2*s3^2*c1^2-2*ny2^2*s3*c1*c3*s2*s1+2*ny2*s3*c1^2*nx2*c3+2*ny2*s3^2*c1*nx2*s2*s1+ny2^2*c3^2*s2^2*s1^2-2*ny2*c3^2*s2*s1*nx2*c1-2*ny2*c3*s2^2*s1^2*nx2*s3+nx2^2*c3^2*c1^2+2*nx2^2*c3*c1*s3*s2*s1+nx2^2*s3^2*s2^2*s1^2)^(1/2);

tx3 =((c3*c1+s3*s2*s1)*nz3-c2*s1*ny3)/(nz3^2*c3^2*c1^2-2*nz3*c3*c1*c2*s1*ny3+nz3^2*s3^2*s2^2*s1^2-2*nz3*s3*s2*s1^2*c2*ny3+c2^2*s1^2*ny3^2+c2^2*s1^2*nx3^2+2*c2*s1*nx3*nz3*s3*c1-2*c2*s1^2*nx3*nz3*c3*s2+nz3^2*s3^2*c1^2+nz3^2*c3^2*s2^2*s1^2+ny3^2*s3^2*c1^2-2*ny3^2*s3*c1*c3*s2*s1+2*ny3*s3*c1^2*nx3*c3+2*ny3*s3^2*c1*nx3*s2*s1+ny3^2*c3^2*s2^2*s1^2-2*ny3*c3^2*s2*s1*nx3*c1-2*ny3*c3*s2^2*s1^2*nx3*s3+nx3^2*c3^2*c1^2+2*nx3^2*c3*c1*s3*s2*s1+nx3^2*s3^2*s2^2*s1^2)^(1/2);
ty3 = (c2*s1*nx3-(-s3*c1+c3*s2*s1)*nz3)/(nz3^2*c3^2*c1^2-2*nz3*c3*c1*c2*s1*ny3+nz3^2*s3^2*s2^2*s1^2-2*nz3*s3*s2*s1^2*c2*ny3+c2^2*s1^2*ny3^2+c2^2*s1^2*nx3^2+2*c2*s1*nx3*nz3*s3*c1-2*c2*s1^2*nx3*nz3*c3*s2+nz3^2*s3^2*c1^2+nz3^2*c3^2*s2^2*s1^2+ny3^2*s3^2*c1^2-2*ny3^2*s3*c1*c3*s2*s1+2*ny3*s3*c1^2*nx3*c3+2*ny3*s3^2*c1*nx3*s2*s1+ny3^2*c3^2*s2^2*s1^2-2*ny3*c3^2*s2*s1*nx3*c1-2*ny3*c3*s2^2*s1^2*nx3*s3+nx3^2*c3^2*c1^2+2*nx3^2*c3*c1*s3*s2*s1+nx3^2*s3^2*s2^2*s1^2)^(1/2);

tx4 =((c3*c1+s3*s2*s1)*nz4-c2*s1*ny4)/(nz4^2*c3^2*c1^2-2*nz4*c3*c1*c2*s1*ny4+nz4^2*s3^2*s2^2*s1^2-2*nz4*s3*s2*s1^2*c2*ny4+c2^2*s1^2*ny4^2+c2^2*s1^2*nx4^2+2*c2*s1*nx4*nz4*s3*c1-2*c2*s1^2*nx4*nz4*c3*s2+nz4^2*s3^2*c1^2+nz4^2*c3^2*s2^2*s1^2+ny4^2*s3^2*c1^2-2*ny4^2*s3*c1*c3*s2*s1+2*ny4*s3*c1^2*nx4*c3+2*ny4*s3^2*c1*nx4*s2*s1+ny4^2*c3^2*s2^2*s1^2-2*ny4*c3^2*s2*s1*nx4*c1-2*ny4*c3*s2^2*s1^2*nx4*s3+nx4^2*c3^2*c1^2+2*nx4^2*c3*c1*s3*s2*s1+nx4^2*s3^2*s2^2*s1^2)^(1/2);
ty4 =(c2*s1*nx4-(-s3*c1+c3*s2*s1)*nz4)/(nz4^2*c3^2*c1^2-2*nz4*c3*c1*c2*s1*ny4+nz4^2*s3^2*s2^2*s1^2-2*nz4*s3*s2*s1^2*c2*ny4+c2^2*s1^2*ny4^2+c2^2*s1^2*nx4^2+2*c2*s1*nx4*nz4*s3*c1-2*c2*s1^2*nx4*nz4*c3*s2+nz4^2*s3^2*c1^2+nz4^2*c3^2*s2^2*s1^2+ny4^2*s3^2*c1^2-2*ny4^2*s3*c1*c3*s2*s1+2*ny4*s3*c1^2*nx4*c3+2*ny4*s3^2*c1*nx4*s2*s1+ny4^2*c3^2*s2^2*s1^2-2*ny4*c3^2*s2*s1*nx4*c1-2*ny4*c3*s2^2*s1^2*nx4*s3+nx4^2*c3^2*c1^2+2*nx4^2*c3*c1*s3*s2*s1+nx4^2*s3^2*s2^2*s1^2)^(1/2);



DD = opttraj_coef([alphat,beta,gamma,fx1,fy1,fz1,fx2,fy2,fz2,fx3,fy3,fz3,fx4,fy4,fz4,xt,yt]);

r23 = DD(2,2); %%% for wheel 1

r43 = DD(4,2);  %%% for wheel 2

r63 = DD(6,2);  %%% for wheel 3

r83 = DD(8,2);  %%% for wheel 4

% r11 = DD(1,1);
r12 = DD(1,1);
r13 = DD(1,2);
r14 = DD(1,3);
r15 = DD(1,4);
r16 = DD(1,5);

% r21 = DD(2,1);
r22 = DD(2,1);
r23 = DD(2,2);
r24 = DD(2,3);
r25 = DD(2,4);
r26 = DD(2,5);

% r31 = DD(3,1);
r32 = DD(3,1);
r33 = DD(3,2);
r34 = DD(3,3);
r35 = DD(3,4);
r36 = DD(3,5);

% r41 = DD(4,1);
r42 = DD(4,1);
r43 = DD(4,2);
r44 = DD(4,3);
r45 = DD(4,4);
r46 = DD(4,5);

% r51 = DD(5,1);
r52 = DD(5,1);
r53 = DD(5,2);
r54 = DD(5,3);
r55 = DD(5,4);
r56 = DD(5,5);

% r61 = DD(6,1);
r62 = DD(6,1);
r63 = DD(6,2);
r64 = DD(6,3);
r65 = DD(6,4);
r66 = DD(6,5);

% r71 = DD(7,1);
r72 = DD(7,1);
r73 = DD(7,2);
r74 = DD(7,3);
r75 = DD(7,4);
r76 = DD(7,5);

% r81 = DD(8,1);
r82 = DD(8,1);
r83 = DD(8,2);
r84 = DD(8,3);
r85 = DD(8,4);
r86 = DD(8,5);


g = [xt,yt,alphat,xtdot,r23,r43,r63,r83];
f = [f;g];

% disp (f);
% disp(xt); 
% disp(yt);
% disp(alphat);
% disp(xtdot);
 var = [xt, yt, alphat, xtdot];
 % disp(sprintf('current inputs are : (%d, %d, %d, %d)', var));


            end
        end
 end

csvwrite(strcat('data/csvlist_', datestr(now, 30), '.dat'),f);
% type csvlist.dat;

% final = zeros(max(L),4);

% f = [r22;r42;r62;r82];

% f = [r24;r44;r64;r84];

% coef_ais = DD(1:2:end,:);
% 
%  f = DD(2:2:end,:);
% 
% coef_ajs = coef_ajs(:,[1:2,4:end]) % remove aj3
% 
% farzifeatures = coef_ais & coef_ajs