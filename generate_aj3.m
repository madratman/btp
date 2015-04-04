% function [f] = generate_aj3(A1, a1, B1, b1)

% xt = inp(1);
% yt = inp(2);
% alphat = inp(3);
% xtdot = inp(4); %try to eliminate the dependency 

xtdot = 1
syms x y;
f = [];
curr_time = datestr(now, 30)
counter = 1;
for alphat = -3.14:0.0628:3.14
 for xt = 0:0.1:10
     for yt = 0:0.1:10
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
% A1 = 3.5*0.50;
% a1 = 0.50;
% B1 = 3.5*0.50;
% b1 = 0.50;
counter = counter + 1

h = 1200/2000;
w = 1200/2000;
l = 0.4;

% xch = x1;
% ych = y1;
% 
% xch = x1;
% ych = y1;


% k3 = subs(terrain_eqn, [x, y], [xt, yt]);
%k3 = A1*cos(a1*xt)+B1*sin(b1*yt)-(-A1*a1*sin(a1*xt)*xt+B1*b1*cos(b1*yt)*yt);
% error. This is WRONG (7). k3 = A1*cos(a1*xt)+B1*sin(b1*yt). Check equation no 7 in the paper. 
% k3 = A1*cos(a1*xt)+B1*sin(b1*yt)
k3 = (6646048762626635*xt^10)/633825300114114700748351602688 + (8885292896938077*xt^9*yt)/5070602400912917605986812821504 - (4145722280633293*xt^9)/618970019642690137449562112 + (8538511678414161*xt^8*yt^2)/1267650600228229401496703205376 - (5335599014481955*xt^8*yt)/2475880078570760549798248448 + (4481742976300321*xt^8)/2417851639229258349412352 + (806520216372471*xt^7*yt^3)/158456325028528675187087900672 - (5189368725781631*xt^7*yt^2)/1237940039285380274899124224 + (2044645103490377*xt^7*yt)/2417851639229258349412352 - (5498014020345971*xt^7)/18889465931478580854784 + (3080297363795269*xt^6*yt^4)/316912650057057350374175801344 - (5422094884067403*xt^6*yt^3)/1237940039285380274899124224 + (2899561632529087*xt^6*yt^2)/2417851639229258349412352 - (3125001407714437*xt^6*yt)/18889465931478580854784 + (1051490426002713*xt^6)/36893488147419103232 - (3801581539763515*xt^5*yt^5)/633825300114114700748351602688 - (4571528645104093*xt^5*yt^4)/2475880078570760549798248448 + (4808423287810665*xt^5*yt^3)/4835703278458516698824704 - (3460686879495541*xt^5*yt^2)/18889465931478580854784 + (2719376213018457*xt^5*yt)/147573952589676412928 - (1036089553833851*xt^5)/576460752303423488 + (1992893572248877*xt^4*yt^6)/316912650057057350374175801344 + (5165514529472195*xt^4*yt^5)/79228162514264337593543950336 + (4804905730873281*xt^4*yt^4)/38685626227668133590597632 - (3418495893408513*xt^4*yt^3)/37778931862957161709568 + (8735848059808043*xt^4*yt^2)/590295810358705651712 - (5505985074099667*xt^4*yt)/4611686018427387904 + (5219526551062933*xt^4)/72057594037927936 - (8997183046002735*xt^3*yt^7)/2535301200456458802993406410752 - (1771701882637855*xt^3*yt^6)/2475880078570760549798248448 + (555323617065343*xt^3*yt^5)/2417851639229258349412352 - (7949821880523047*xt^3*yt^4)/302231454903657293676544 + (2751907605797891*xt^3*yt^3)/590295810358705651712 - (5733825012207603*xt^3*yt^2)/9223372036854775808 + (6198209524134923*xt^3*yt)/144115188075855872 - (7993217614453893*xt^3)/4503599627370496 - (4702302799241693*xt^2*yt^8)/162259276829213363391578010288128 + (2486862328970867*xt^2*yt^7)/2475880078570760549798248448 - (7003063522046129*xt^2*yt^6)/38685626227668133590597632 + (8775204801940575*xt^2*yt^5)/4835703278458516698824704 + (1782900655996695*xt^2*yt^4)/1180591620717411303424 - (1570173108757271*xt^2*yt^3)/9223372036854775808 + (995828493769777*xt^2*yt^2)/72057594037927936 - (1752978533922223*xt^2*yt)/2251799813685248 + (6679291565522015*xt^2)/281474976710656 - (3926335245036815*xt*yt^9)/81129638414606681695789005144064 + (3477342435423015*xt*yt^8)/19807040628566084398385987584 - (3158023532829485*xt*yt^7)/19342813113834066795298816 + (3220893758715417*xt*yt^6)/75557863725914323419136 - (1458236122953851*xt*yt^5)/295147905179352825856 + (5359339437996547*xt*yt^4)/18446744073709551616 - (4975525866616571*xt*yt^3)/576460752303423488 + (5192201025591889*xt*yt^2)/72057594037927936 + (2276460497426757*xt*yt)/562949953421312 - (4754503515553561*xt)/35184372088832 - (3345976869674297*yt^10)/158456325028528675187087900672 + (8271427088571267*yt^9)/618970019642690137449562112 - (4382107944941979*yt^8)/1208925819614629174706176 + (5205736791296555*yt^7)/9444732965739290427392 - (3801856740486683*yt^6)/73786976294838206464 + (7033491811402927*yt^5)/2305843009213693952 - (8170610142300893*yt^4)/72057594037927936 + (5701400768688691*yt^3)/2251799813685248 - (2172183660950817*yt^2)/70368744177664 + (2892389696795307*yt)/17592186044416 + 8660241520698595/281474976710656;


% k1 = -A1*a1*sin(a1*xt);
k1 = (33230243813133175*xt^9)/316912650057057350374175801344 + (79967636072442693*xt^8*yt)/5070602400912917605986812821504 - (37311500525699637*xt^8)/618970019642690137449562112 + (8538511678414161*xt^7*yt^2)/158456325028528675187087900672 - (5335599014481955*xt^7*yt)/309485009821345068724781056 + (4481742976300321*xt^7)/302231454903657293676544 + (5645641514607297*xt^6*yt^3)/158456325028528675187087900672 - (36325581080471417*xt^6*yt^2)/1237940039285380274899124224 + (14312515724432639*xt^6*yt)/2417851639229258349412352 - (38486098142421797*xt^6)/18889465931478580854784 + (9240892091385807*xt^5*yt^4)/158456325028528675187087900672 - (16266284652202209*xt^5*yt^3)/618970019642690137449562112 + (8698684897587261*xt^5*yt^2)/1208925819614629174706176 - (9375004223143311*xt^5*yt)/9444732965739290427392 + (3154471278008139*xt^5)/18446744073709551616 - (19007907698817575*xt^4*yt^5)/633825300114114700748351602688 - (22857643225520465*xt^4*yt^4)/2475880078570760549798248448 + (24042116439053325*xt^4*yt^3)/4835703278458516698824704 - (17303434397477705*xt^4*yt^2)/18889465931478580854784 + (13596881065092285*xt^4*yt)/147573952589676412928 - (5180447769169255*xt^4)/576460752303423488 + (1992893572248877*xt^3*yt^6)/79228162514264337593543950336 + (5165514529472195*xt^3*yt^5)/19807040628566084398385987584 + (4804905730873281*xt^3*yt^4)/9671406556917033397649408 - (3418495893408513*xt^3*yt^3)/9444732965739290427392 + (8735848059808043*xt^3*yt^2)/147573952589676412928 - (5505985074099667*xt^3*yt)/1152921504606846976 + (5219526551062933*xt^3)/18014398509481984 - (26991549138008205*xt^2*yt^7)/2535301200456458802993406410752 - (5315105647913565*xt^2*yt^6)/2475880078570760549798248448 + (1665970851196029*xt^2*yt^5)/2417851639229258349412352 - (23849465641569141*xt^2*yt^4)/302231454903657293676544 + (8255722817393673*xt^2*yt^3)/590295810358705651712 - (17201475036622809*xt^2*yt^2)/9223372036854775808 + (18594628572404769*xt^2*yt)/144115188075855872 - (23979652843361679*xt^2)/4503599627370496 - (4702302799241693*xt*yt^8)/81129638414606681695789005144064 + (2486862328970867*xt*yt^7)/1237940039285380274899124224 - (7003063522046129*xt*yt^6)/19342813113834066795298816 + (8775204801940575*xt*yt^5)/2417851639229258349412352 + (1782900655996695*xt*yt^4)/590295810358705651712 - (1570173108757271*xt*yt^3)/4611686018427387904 + (995828493769777*xt*yt^2)/36028797018963968 - (1752978533922223*xt*yt)/1125899906842624 + (6679291565522015*xt)/140737488355328 - (3926335245036815*yt^9)/81129638414606681695789005144064 + (3477342435423015*yt^8)/19807040628566084398385987584 - (3158023532829485*yt^7)/19342813113834066795298816 + (3220893758715417*yt^6)/75557863725914323419136 - (1458236122953851*yt^5)/295147905179352825856 + (5359339437996547*yt^4)/18446744073709551616 - (4975525866616571*yt^3)/576460752303423488 + (5192201025591889*yt^2)/72057594037927936 + (2276460497426757*yt)/562949953421312 - 4754503515553561/35184372088832;
 

% k2 = B1*b1*cos(b1*yt);
k2 = (8885292896938077*xt^9)/5070602400912917605986812821504 + (8538511678414161*xt^8*yt)/633825300114114700748351602688 - (5335599014481955*xt^8)/2475880078570760549798248448 + (2419560649117413*xt^7*yt^2)/158456325028528675187087900672 - (5189368725781631*xt^7*yt)/618970019642690137449562112 + (2044645103490377*xt^7)/2417851639229258349412352 + (3080297363795269*xt^6*yt^3)/79228162514264337593543950336 - (16266284652202209*xt^6*yt^2)/1237940039285380274899124224 + (2899561632529087*xt^6*yt)/1208925819614629174706176 - (3125001407714437*xt^6)/18889465931478580854784 - (19007907698817575*xt^5*yt^4)/633825300114114700748351602688 - (4571528645104093*xt^5*yt^3)/618970019642690137449562112 + (14425269863431995*xt^5*yt^2)/4835703278458516698824704 - (3460686879495541*xt^5*yt)/9444732965739290427392 + (2719376213018457*xt^5)/147573952589676412928 + (5978680716746631*xt^4*yt^5)/158456325028528675187087900672 + (25827572647360975*xt^4*yt^4)/79228162514264337593543950336 + (4804905730873281*xt^4*yt^3)/9671406556917033397649408 - (10255487680225539*xt^4*yt^2)/37778931862957161709568 + (8735848059808043*xt^4*yt)/295147905179352825856 - (5505985074099667*xt^4)/4611686018427387904 - (62980281322019145*xt^3*yt^6)/2535301200456458802993406410752 - (5315105647913565*xt^3*yt^5)/1237940039285380274899124224 + (2776618085326715*xt^3*yt^4)/2417851639229258349412352 - (7949821880523047*xt^3*yt^3)/75557863725914323419136 + (8255722817393673*xt^3*yt^2)/590295810358705651712 - (5733825012207603*xt^3*yt)/4611686018427387904 + (6198209524134923*xt^3)/144115188075855872 - (4702302799241693*xt^2*yt^7)/20282409603651670423947251286016 + (17408036302796069*xt^2*yt^6)/2475880078570760549798248448 - (21009190566138387*xt^2*yt^5)/19342813113834066795298816 + (43876024009702875*xt^2*yt^4)/4835703278458516698824704 + (1782900655996695*xt^2*yt^3)/295147905179352825856 - (4710519326271813*xt^2*yt^2)/9223372036854775808 + (995828493769777*xt^2*yt)/36028797018963968 - (1752978533922223*xt^2)/2251799813685248 - (35337017205331335*xt*yt^8)/81129638414606681695789005144064 + (3477342435423015*xt*yt^7)/2475880078570760549798248448 - (22106164729806395*xt*yt^6)/19342813113834066795298816 + (9662681276146251*xt*yt^5)/37778931862957161709568 - (7291180614769255*xt*yt^4)/295147905179352825856 + (5359339437996547*xt*yt^3)/4611686018427387904 - (14926577599849713*xt*yt^2)/576460752303423488 + (5192201025591889*xt*yt)/36028797018963968 + (2276460497426757*xt)/562949953421312 - (16729884348371485*yt^9)/79228162514264337593543950336 + (74442843797141403*yt^8)/618970019642690137449562112 - (4382107944941979*yt^7)/151115727451828646838272 + (36440157539075885*yt^6)/9444732965739290427392 - (11405570221460049*yt^5)/36893488147419103232 + (35167459057014635*yt^4)/2305843009213693952 - (8170610142300893*yt^3)/18014398509481984 + (17104202306066073*yt^2)/2251799813685248 - (2172183660950817*yt)/35184372088832 + 2892389696795307/17592186044416;

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
% fx1 = -a1*A1*sin(a1*X1)/(1 + ((a1*A1*sin(a1*X1))^2) + ((b1*B1*cos(b1*Y1)^2)))^(1/2);

k1w1 = subs(k1, {xt,yt}, {xc1, yc1});
k2w1 = subs(k2, {xt,yt}, {xc1, yc1});
fx1 = k1w1/((1 + (k1w1^2) + (k2w1^2))^(1/2));
fy1 = k2w1/((1 + (k1w1^2) + (k2w1^2))^(1/2));
fz1 = -1/((1 + (k1w1^2) + (k2w1^2))^(1/2));

 
 
% fy1 = A1*cos(b1*Y1)*b1/(1+A1^2*sin(a1*X1)^2*a1^2+A1^2*cos(b1*Y1)^2*b1^2)^(1/2);
% fy1 = b1*B1*cos(a1*X1)/(1 + ((a1*A1*sin(a1*X1))^2) + ((b1*B1*cos(b1*Y1)^2)))^(1/2);
% should have been cos(b1*Y1)
 
% fz1 = -1/(1+A1^2*sin(a1*X1)^2*a1^2+A1^2*cos(b1*Y1)^2*b1^2)^(1/2);
% fz1 = -1 / (1 + ((a1*A1*sin(a1*X1))^2) + ((b1*B1*cos(b1*Y1)^2)))^(1/2);
 
xc2 = xt-w*sin(alphat)-l*sin(alphat)*gamma+h*cos(alphat)-l*cos(alphat)*beta;
yc2 = yt+h*sin(alphat)-l*sin(alphat)*beta+w*cos(alphat)+l*cos(alphat)*gamma;

zc2 = zt-h*beta-l+w*gamma;
X2 = xc2;
Y2 = yc2;
Z2 = zc2;



% fx2 = -A1*sin(a1*X2)*a1/(1 + ((a1*A1*sin(a1*X2))^2) + ((b1*B1*cos(b1*Y2)^2)))^(1/2) ;
 
 
 
% fy2 = B1*cos(b1*Y2)*b1/(1 + ((a1*A1*sin(a1*X2))^2) + ((b1*B1*cos(b1*Y2)^2)))^(1/2) ;
 
 
 
% fz2 = -1/(1 + ((a1*A1*sin(a1*X2))^2) + ((b1*B1*cos(b1*Y2)^2)))^(1/2) ;
k1w2 = subs(k1, {xt,yt}, {xc2, yc2});
k2w2 = subs(k2, {xt,yt}, {xc2, yc2});
fx2 = k1w2/((1 + (k1w2^2) + (k2w2^2))^(1/2));
fy2 = k2w2/((1 + (k1w2^2) + (k2w2^2))^(1/2));
fz2 = -1/((1 + (k1w2^2) + (k2w2^2))^(1/2));

 
 
xc3 = xt+w*sin(alphat)-l*sin(alphat)+h*cos(alphat)-l*cos(alphat)*beta;
yc3 = yt+h*sin(alphat)-l*sin(alphat)*beta-w*cos(alphat)+l*cos(alphat)*gamma;

zc3 = zt-h*beta-l-w*gamma;


X3 = xc3;
Y3 = yc3;
Z3 = zc3;

% fx3 = -A1*sin(a1*X3)*a1/(1 + ((a1*A1*sin(a1*X3))^2) + ((b1*B1*cos(b1*Y3)^2)))^(1/2) ;
 
 
 
% fy3 = B1*cos(b1*Y3)*b1/(1 + ((a1*A1*sin(a1*X3))^2) + ((b1*B1*cos(b1*Y3)^2)))^(1/2) ;
 
 
 
% fz3 = -1/(1 + ((a1*A1*sin(a1*X3))^2) + ((b1*B1*cos(b1*Y3)^2)))^(1/2) ;

k1w3 = subs(k1, {xt,yt}, {xc3, yc3});
k2w3 = subs(k2, {xt,yt}, {xc3, yc3});
fx3 = k1w3/((1 + (k1w3^2) + (k2w3^2))^(1/2));
fy3 = k2w3/((1 + (k1w3^2) + (k2w3^2))^(1/2));
fz3 = -1/((1 + (k1w3^2) + (k2w3^2))^(1/2));

 
 
 
xc4 = xt+w*sin(alphat)-l*sin(alphat)*gamma-h*cos(alphat)-l*cos(alphat)*beta;

yc4 = yt-h*sin(alphat)-l*sin(alphat)*beta-w*cos(alphat)+l*cos(alphat)*gamma;

zc4 = zt+h*sin(beta)-l-w*gamma;


X4 = xc4;
Y4 = yc4;
Z4 = zc4;

% fx4 = -A1*sin(a1*X4)*a1/(1 + ((a1*A1*sin(a1*X4))^2) + ((b1*B1*cos(b1*Y4)^2)))^(1/2) ;
 
 
 
% fy4 = B1*cos(b1*Y4)*b1/(1 + ((a1*A1*sin(a1*X4))^2) + ((b1*B1*cos(b1*Y4)^2)))^(1/2) ;
 
 
 
% fz4 = -1/(1 + ((a1*A1*sin(a1*X4))^2) + ((b1*B1*cos(b1*Y4)^2)))^(1/2) ;

k1w4 = subs(k1, {xt,yt}, {xc4, yc4});
k2w4 = subs(k2, {xt,yt}, {xc4, yc4});
fx4 = k1w4/((1 + (k1w4^2) + (k2w4^2))^(1/2));
fy4 = k2w4/((1 + (k1w4^2) + (k2w4^2))^(1/2));
fz4 = -1/((1 + (k1w4^2) + (k2w4^2))^(1/2))

 
 


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
 
% tz1 = -(ny1*s3*c1-ny1*c3*s2*s1+nx1*c3*c1+nx1*s3*s2*s1)/(nz1^2*c3^2*c1^2-2*nz1*c3*c1*c2*s1*ny1+nz1^2*s3^2*s2^2*s1^2-2*nz1*s3*s2*s1^2*c2*ny1+c2^2*s1^2*ny1^2+c2^2*s1^2*nx1^2+2*c2*s1*nx1*nz1*s3*c1-2*c2*s1^2*nx1*nz1*c3*s2+nz1^2*s3^2*c1^2+nz1^2*c3^2*s2^2*s1^2+ny1^2*s3^2*c1^2-2*ny1^2*s3*c1*c3*s2*s1+2*ny1*s3*c1^2*nx1*c3+2*ny1*s3^2*c1*nx1*s2*s1+ny1^2*c3^2*s2^2*s1^2-2*ny1*c3^2*s2*s1*nx1*c1-2*ny1*c3*s2^2*s1^2*nx1*s3+nx1^2*c3^2*c1^2+2*nx1^2*c3*c1*s3*s2*s1+nx1^2*s3^2*s2^2*s1^2)^(1/2);
 
% tz2 = -(ny2*s3*c1-ny2*c3*s2*s1+nx2*c3*c1+nx2*s3*s2*s1)/(nz2^2*c3^2*c1^2-2*nz2*c3*c1*c2*s1*ny2+nz2^2*s3^2*s2^2*s1^2-2*nz2*s3*s2*s1^2*c2*ny2+c2^2*s1^2*ny2^2+c2^2*s1^2*nx2^2+2*c2*s1*nx2*nz2*s3*c1-2*c2*s1^2*nx2*nz2*c3*s2+nz2^2*s3^2*c1^2+nz2^2*c3^2*s2^2*s1^2+ny2^2*s3^2*c1^2-2*ny2^2*s3*c1*c3*s2*s1+2*ny2*s3*c1^2*nx2*c3+2*ny2*s3^2*c1*nx2*s2*s1+ny2^2*c3^2*s2^2*s1^2-2*ny2*c3^2*s2*s1*nx2*c1-2*ny2*c3*s2^2*s1^2*nx2*s3+nx2^2*c3^2*c1^2+2*nx2^2*c3*c1*s3*s2*s1+nx2^2*s3^2*s2^2*s1^2)^(1/2);
 
% tz3 = -(ny3*s3*c1-ny3*c3*s2*s1+nx3*c3*c1+nx3*s3*s2*s1)/(nz3^2*c3^2*c1^2-2*nz3*c3*c1*c2*s1*ny3+nz3^2*s3^2*s2^2*s1^2-2*nz3*s3*s2*s1^2*c2*ny3+c2^2*s1^2*ny3^2+c2^2*s1^2*nx3^2+2*c2*s1*nx3*nz3*s3*c1-2*c2*s1^2*nx3*nz3*c3*s2+nz3^2*s3^2*c1^2+nz3^2*c3^2*s2^2*s1^2+ny3^2*s3^2*c1^2-2*ny3^2*s3*c1*c3*s2*s1+2*ny3*s3*c1^2*nx3*c3+2*ny3*s3^2*c1*nx3*s2*s1+ny3^2*c3^2*s2^2*s1^2-2*ny3*c3^2*s2*s1*nx3*c1-2*ny3*c3*s2^2*s1^2*nx3*s3+nx3^2*c3^2*c1^2+2*nx3^2*c3*c1*s3*s2*s1+nx3^2*s3^2*s2^2*s1^2)^(1/2);

% tz4 = -(ny4*s3*c1-ny4*c3*s2*s1+nx4*c3*c1+nx4*s3*s2*s1)/(nz4^2*c3^2*c1^2-2*nz4*c3*c1*c2*s1*ny4+nz4^2*s3^2*s2^2*s1^2-2*nz4*s3*s2*s1^2*c2*ny4+c2^2*s1^2*ny4^2+c2^2*s1^2*nx4^2+2*c2*s1*nx4*nz4*s3*c1-2*c2*s1^2*nx4*nz4*c3*s2+nz4^2*s3^2*c1^2+nz4^2*c3^2*s2^2*s1^2+ny4^2*s3^2*c1^2-2*ny4^2*s3*c1*c3*s2*s1+2*ny4*s3*c1^2*nx4*c3+2*ny4*s3^2*c1*nx4*s2*s1+ny4^2*c3^2*s2^2*s1^2-2*ny4*c3^2*s2*s1*nx4*c1-2*ny4*c3*s2^2*s1^2*nx4*s3+nx4^2*c3^2*c1^2+2*nx4^2*c3*c1*s3*s2*s1+nx4^2*s3^2*s2^2*s1^2)^(1/2);
% tx1 =((c3*c1+s3*s2*s1)*nz1-c2*s1*ny1)/(nz1^2*c3^2*c1^2-2*nz1*c3*c1*c2*s1*ny1+nz1^2*s3^2*s2^2*s1^2-2*nz1*s3*s2*s1^2*c2*ny1+c2^2*s1^2*ny1^2+c2^2*s1^2*nx1^2+2*c2*s1*nx1*nz1*s3*c1-2*c2*s1^2*nx1*nz1*c3*s2+nz1^2*s3^2*c1^2+nz1^2*c3^2*s2^2*s1^2+ny1^2*s3^2*c1^2-2*ny1^2*s3*c1*c3*s2*s1+2*ny1*s3*c1^2*nx1*c3+2*ny1*s3^2*c1*nx1*s2*s1+ny1^2*c3^2*s2^2*s1^2-2*ny1*c3^2*s2*s1*nx1*c1-2*ny1*c3*s2^2*s1^2*nx1*s3+nx1^2*c3^2*c1^2+2*nx1^2*c3*c1*s3*s2*s1+nx1^2*s3^2*s2^2*s1^2)^(1/2);
% ty1 = (c2*s1*nx1-(-s3*c1+c3*s2*s1)*nz1)/(nz1^2*c3^2*c1^2-2*nz1*c3*c1*c2*s1*ny1+nz1^2*s3^2*s2^2*s1^2-2*nz1*s3*s2*s1^2*c2*ny1+c2^2*s1^2*ny1^2+c2^2*s1^2*nx1^2+2*c2*s1*nx1*nz1*s3*c1-2*c2*s1^2*nx1*nz1*c3*s2+nz1^2*s3^2*c1^2+nz1^2*c3^2*s2^2*s1^2+ny1^2*s3^2*c1^2-2*ny1^2*s3*c1*c3*s2*s1+2*ny1*s3*c1^2*nx1*c3+2*ny1*s3^2*c1*nx1*s2*s1+ny1^2*c3^2*s2^2*s1^2-2*ny1*c3^2*s2*s1*nx1*c1-2*ny1*c3*s2^2*s1^2*nx1*s3+nx1^2*c3^2*c1^2+2*nx1^2*c3*c1*s3*s2*s1+nx1^2*s3^2*s2^2*s1^2)^(1/2);

% tx2 = ((c3*c1+s3*s2*s1)*nz2-c2*s1*ny2)/(nz2^2*c3^2*c1^2-2*nz2*c3*c1*c2*s1*ny2+nz2^2*s3^2*s2^2*s1^2-2*nz2*s3*s2*s1^2*c2*ny2+c2^2*s1^2*ny2^2+c2^2*s1^2*nx2^2+2*c2*s1*nx2*nz2*s3*c1-2*c2*s1^2*nx2*nz2*c3*s2+nz2^2*s3^2*c1^2+nz2^2*c3^2*s2^2*s1^2+ny2^2*s3^2*c1^2-2*ny2^2*s3*c1*c3*s2*s1+2*ny2*s3*c1^2*nx2*c3+2*ny2*s3^2*c1*nx2*s2*s1+ny2^2*c3^2*s2^2*s1^2-2*ny2*c3^2*s2*s1*nx2*c1-2*ny2*c3*s2^2*s1^2*nx2*s3+nx2^2*c3^2*c1^2+2*nx2^2*c3*c1*s3*s2*s1+nx2^2*s3^2*s2^2*s1^2)^(1/2);
% ty2 =(c2*s1*nx2-(-s3*c1+c3*s2*s1)*nz2)/(nz2^2*c3^2*c1^2-2*nz2*c3*c1*c2*s1*ny2+nz2^2*s3^2*s2^2*s1^2-2*nz2*s3*s2*s1^2*c2*ny2+c2^2*s1^2*ny2^2+c2^2*s1^2*nx2^2+2*c2*s1*nx2*nz2*s3*c1-2*c2*s1^2*nx2*nz2*c3*s2+nz2^2*s3^2*c1^2+nz2^2*c3^2*s2^2*s1^2+ny2^2*s3^2*c1^2-2*ny2^2*s3*c1*c3*s2*s1+2*ny2*s3*c1^2*nx2*c3+2*ny2*s3^2*c1*nx2*s2*s1+ny2^2*c3^2*s2^2*s1^2-2*ny2*c3^2*s2*s1*nx2*c1-2*ny2*c3*s2^2*s1^2*nx2*s3+nx2^2*c3^2*c1^2+2*nx2^2*c3*c1*s3*s2*s1+nx2^2*s3^2*s2^2*s1^2)^(1/2);

% tx3 =((c3*c1+s3*s2*s1)*nz3-c2*s1*ny3)/(nz3^2*c3^2*c1^2-2*nz3*c3*c1*c2*s1*ny3+nz3^2*s3^2*s2^2*s1^2-2*nz3*s3*s2*s1^2*c2*ny3+c2^2*s1^2*ny3^2+c2^2*s1^2*nx3^2+2*c2*s1*nx3*nz3*s3*c1-2*c2*s1^2*nx3*nz3*c3*s2+nz3^2*s3^2*c1^2+nz3^2*c3^2*s2^2*s1^2+ny3^2*s3^2*c1^2-2*ny3^2*s3*c1*c3*s2*s1+2*ny3*s3*c1^2*nx3*c3+2*ny3*s3^2*c1*nx3*s2*s1+ny3^2*c3^2*s2^2*s1^2-2*ny3*c3^2*s2*s1*nx3*c1-2*ny3*c3*s2^2*s1^2*nx3*s3+nx3^2*c3^2*c1^2+2*nx3^2*c3*c1*s3*s2*s1+nx3^2*s3^2*s2^2*s1^2)^(1/2);
% ty3 = (c2*s1*nx3-(-s3*c1+c3*s2*s1)*nz3)/(nz3^2*c3^2*c1^2-2*nz3*c3*c1*c2*s1*ny3+nz3^2*s3^2*s2^2*s1^2-2*nz3*s3*s2*s1^2*c2*ny3+c2^2*s1^2*ny3^2+c2^2*s1^2*nx3^2+2*c2*s1*nx3*nz3*s3*c1-2*c2*s1^2*nx3*nz3*c3*s2+nz3^2*s3^2*c1^2+nz3^2*c3^2*s2^2*s1^2+ny3^2*s3^2*c1^2-2*ny3^2*s3*c1*c3*s2*s1+2*ny3*s3*c1^2*nx3*c3+2*ny3*s3^2*c1*nx3*s2*s1+ny3^2*c3^2*s2^2*s1^2-2*ny3*c3^2*s2*s1*nx3*c1-2*ny3*c3*s2^2*s1^2*nx3*s3+nx3^2*c3^2*c1^2+2*nx3^2*c3*c1*s3*s2*s1+nx3^2*s3^2*s2^2*s1^2)^(1/2);

% tx4 =((c3*c1+s3*s2*s1)*nz4-c2*s1*ny4)/(nz4^2*c3^2*c1^2-2*nz4*c3*c1*c2*s1*ny4+nz4^2*s3^2*s2^2*s1^2-2*nz4*s3*s2*s1^2*c2*ny4+c2^2*s1^2*ny4^2+c2^2*s1^2*nx4^2+2*c2*s1*nx4*nz4*s3*c1-2*c2*s1^2*nx4*nz4*c3*s2+nz4^2*s3^2*c1^2+nz4^2*c3^2*s2^2*s1^2+ny4^2*s3^2*c1^2-2*ny4^2*s3*c1*c3*s2*s1+2*ny4*s3*c1^2*nx4*c3+2*ny4*s3^2*c1*nx4*s2*s1+ny4^2*c3^2*s2^2*s1^2-2*ny4*c3^2*s2*s1*nx4*c1-2*ny4*c3*s2^2*s1^2*nx4*s3+nx4^2*c3^2*c1^2+2*nx4^2*c3*c1*s3*s2*s1+nx4^2*s3^2*s2^2*s1^2)^(1/2);
% ty4 =(c2*s1*nx4-(-s3*c1+c3*s2*s1)*nz4)/(nz4^2*c3^2*c1^2-2*nz4*c3*c1*c2*s1*ny4+nz4^2*s3^2*s2^2*s1^2-2*nz4*s3*s2*s1^2*c2*ny4+c2^2*s1^2*ny4^2+c2^2*s1^2*nx4^2+2*c2*s1*nx4*nz4*s3*c1-2*c2*s1^2*nx4*nz4*c3*s2+nz4^2*s3^2*c1^2+nz4^2*c3^2*s2^2*s1^2+ny4^2*s3^2*c1^2-2*ny4^2*s3*c1*c3*s2*s1+2*ny4*s3*c1^2*nx4*c3+2*ny4*s3^2*c1*nx4*s2*s1+ny4^2*c3^2*s2^2*s1^2-2*ny4*c3^2*s2*s1*nx4*c1-2*ny4*c3*s2^2*s1^2*nx4*s3+nx4^2*c3^2*c1^2+2*nx4^2*c3*c1*s3*s2*s1+nx4^2*s3^2*s2^2*s1^2)^(1/2);



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

% f = [f;g];

% disp (f);
% disp(xt); 
% disp(yt);
% disp(alphat);
% disp(xtdot);
dlmwrite(strcat('data/csvlist_e068_n29', num2str(A1), '-', num2str(a1), '-', num2str(B1), '-', num2str(b1), '-', curr_time, '.dat'), g, '-append');
 % var = [xt, yt, alphat, xtdot];
 % disp(sprintf('current inputs are : (%d, %d, %d, %d)', var));


            end
        end
 end

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
