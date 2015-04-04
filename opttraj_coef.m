
function v6 = opttraj_coef(inp1)



alpha1 = inp1(1);
roll = inp1(2);
pitch = inp1(3);
fx1 = inp1(4);
fy1 = inp1(5);
fz1 = inp1(6);
fx2 = inp1(7);
fy2 = inp1(8);
fz2 = inp1(9);
fx3 = inp1(10);
fy3 = inp1(11);
fz3 = inp1(12);
fx4 = inp1(13);
fy4 = inp1(14);
fz4 = inp1(15);
% xt = inp1(16);
% yt = inp1(17);

% xt = inp1(2);
% yt = inp1(3);
% f_solve([xt,yt,alpha1]);


% global roll
% global pitch
% global yaw
% global fx1
% global fy1
% global fz1
% global fx2
% global fy2
% global fz2 
% global fx3
% global fy3
% global fz3
% 
% global fx4
% global fy4
% global fz4

l1 = 0.4;
l2 = 0.4;
l3 = 0.4;
l4 = 0.4;
lh1 = 0.0;
lh2 = 0.0;
lh3 = 0.0;
lh4 = 0.0;
% o =  -20*pi/180;
% ro = 0*pi/180;
% yo = 0*pi/180;
% 
o =  pitch;
ro = -roll;
% yo = pi/2-alpha1;
yo = alpha1;


y1=atan(fy1/fz1);
y2=atan(fy2/fz2);
y3=atan(fy3/fz3);
y4=atan(fy4/fz4);

% y1=atan(n1y/n1z);
% y2=atan(n2y/n2z)
% y3=atan(n3y/n3z);
% y4=atan(n4y/n4z);


ra = 0.070;   
r = 0.005;
m        = 10;
Grav     =  9.81;
tmin  = -1;       
tmax  =  1;       

w = 1200/2000; 
h = 1200/2000;


c1=cos(o);
c2=cos(ro);
c3=cos(yo);

s1=sin(o);
s2=sin(ro);
s3=sin(yo);

R=[c3 -s3 0;s3 c3 0;0 0 1]*[c2 0 s2;0 1 0;-s2 0 c2]*[1 0 0;0 c1 -s1;0 s1 c1];



unnx1 = fx1;
unny1 = fy1;
unnz1 = -fz1;

vn1 = [unnx1;unny1;unnz1];

unnx2 = fx2;
unny2 = fy2;
unnz2 = -fz2;


vn2 = [unnx2;unny2;unnz2];

unnx3 = fx3;
unny3 = fy3;
unnz3 = -fz3;

vn3 = [unnx3;unny3;unnz3];

unnx4 = fx4;
unny4 = fy4;
unnz4 = -fz4;

vn4 = [unnx4;unny4;unnz4];

%%% radius vector of first wheel 

FAr1=R*[sign(2.5-1)*h;(-1)^1*w-(lh1);0];
% FAr1=R*[-h;(-1)^1*w-(lh1+195/1000);0];
ab1 = R*[0;0;-(l1)];
bc1 = R*[0;-ra*sin(y1);-ra*cos(y1)];
cd1 = -r*vn1;

TNr1 = FAr1 + ab1 + bc1 + cd1;
r1x = TNr1(1,1);
r1y = TNr1(2,1);
r1z = TNr1(3,1);

%%%% radius vector of the 2nd wheel 

FAr2=R*[sign(2.5 -2)*h;(-1)^2*w+(lh2);0];
% FAr2=R*[-h;(-1)^2*w+(lh2+195/1000);0];

ab2 = R*[0;0;-(l2)];
bc2 = R*[0;-ra*sin(y2);-ra*cos(y2)];
cd2 = -r*vn2;

TNr2 = FAr2 + ab2 + bc2 + cd2;

r2x = TNr2(1,1);
r2y = TNr2(2,1);
r2z = TNr2(3,1);


%%% radius vector of the 3rd wheel 

FAr3=R*[sign(2.5 -3)*h;(-1)^3*w-(lh3);0];
% FAr3=R*[h;(-1)^3*w-(lh3+195/1000);0];
ab3 = R*[0;0;-(l3)];
bc3 = R*[0;-ra*sin(y3);-ra*cos(y3)];
cd3 = -r*vn3;

TNr3 = FAr3 + ab3 + bc3 + cd3;

r3x = TNr3(1,1);
r3y = TNr3(2,1);
r3z = TNr3(3,1);


%%%% radius vector of the 4th wheel 

FAr4=R*[sign(2.5 -4)*h;(-1)^4*w+(lh4);0];
% FAr4=R*[h;(-1)^4*w+(lh4+195/1000);0];
ab4 = R*[0;0;-(l4)];
bc4 = R*[0;-ra*sin(y4);-ra*cos(y4)];
cd4 = -r*vn4;

TNr4 = FAr4 + ab4 + bc4 + cd4;

r4x = TNr4(1,1);
r4y = TNr4(2,1);
r4z = TNr4(3,1);



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% radius vector of first wheel 

% FAr1=R*[sign(2.5-1)*h;(-1)^1*w-(lh1+195/1000);0];
% % FAr1=R*[-h;(-1)^1*w-(lh1+195/1000);0];
% ab1 = R*[0;0;-(l1+490/1000)];
% bc1 = R*[0;-ra*sin(y1);-ra*cos(y1)];
% cd1 = -r*vn1;
% 
% TNr1 = FAr1 + ab1 + bc1 + cd1;
% r1x = TNr1(1,1);
% r1y = TNr1(2,1);
% r1z = TNr1(3,1);
% 
% %%%% radius vector of the 2nd wheel 
% 
% FAr2=R*[sign(2.5 -2)*h;(-1)^2*w+(lh2+195/1000);0];
% % FAr2=R*[-h;(-1)^2*w+(lh2+195/1000);0];
% 
% ab2 = R*[0;0;-(l2+490/1000)];
% bc2 = R*[0;-ra*sin(y2);-ra*cos(y2)];
% cd2 = -r*vn2;
% 
% TNr2 = FAr2 + ab2 + bc2 + cd2;
% 
% r2x = TNr2(1,1);
% r2y = TNr2(2,1);
% r2z = TNr2(3,1);
% 
% 
% %%% radius vector of the 3rd wheel 
% 
% FAr3=R*[sign(2.5 -3)*h;(-1)^3*w-(lh3+195/1000);0];
% % FAr3=R*[h;(-1)^3*w-(lh3+195/1000);0];
% ab3 = R*[0;0;-(l3+490/1000)];
% bc3 = R*[0;-ra*sin(y3);-ra*cos(y3)];
% cd3 = -r*vn3;
% 
% TNr3 = FAr3 + ab3 + bc3 + cd3;
% 
% r3x = TNr3(1,1);
% r3y = TNr3(2,1);
% r3z = TNr3(3,1);
% 
% 
% %%%% radius vector of the 4th wheel 
% 
% FAr4=R*[sign(2.5 -4)*h;(-1)^4*w+(lh4+195/1000);0];
% % FAr4=R*[h;(-1)^4*w+(lh4+195/1000);0];
% ab4 = R*[0;0;-(l4+490/1000)];
% bc4 = R*[0;-ra*sin(y4);-ra*cos(y4)];
% cd4 = -r*vn4;
% 
% TNr4 = FAr4 + ab4 + bc4 + cd4;
% 
% r4x = TNr4(1,1);
% r4y = TNr4(2,1);
% r4z = TNr4(3,1);
% 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%vehicle longitudinal axis 

lon = R*[0;1;0];
C = lon(3,1);
%%%%%%%%%%%%%%%%%%%%%wheel axis unit vector 
% if(vel>0)
meui = R*[0;1;0];
% else 
%     meui = R*[0;-1;0];
% end



%% traction force unit vector for the first wheel 

t11 = cross(meui,vn1)/norm(cross(R*[0;1;0],vn1));
tx11 = t11(1,1);
ty11 = t11(2,1);
tz11 = t11(3,1);

%% traction force unit vector for the 2nd wheel
t22 = cross(meui,vn2)/norm(cross(R*[0;1;0],vn2));
tx22 = t22(1,1);
ty22 = t22(2,1);
tz22 = t22(3,1);

t33 = cross(meui,vn3)/norm(cross(R*[0;1;0],vn3));
tx33 = t33(1,1);
ty33 = t33(2,1);
tz33 = t33(3,1);

%%% traction force unit vector for the 4th wheel 

t44 = cross(meui,vn4)/norm(cross(R*[0;1;0],vn4));
tx44 = t44(1,1);
ty44 = t44(2,1);
tz44 = t44(3,1);


%%% net moment unit vector 

D1 = cross(TNr1,vn1);
E1 = cross(TNr1,t11);

D2 = cross(TNr2,vn2);
E2 = cross(TNr2,t22);

D3 = cross(TNr3,vn3);
E3 = cross(TNr3,t33);

D4 = cross(TNr4,vn4);
E4 = cross(TNr4,t44);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
phi1 = 0;

phi2 = 0;

phi3 = 0;

phi4 = 0;

% n1x = unnx1;
% n1y = unny1;
% n1z = unnz1;
% 
% n2x = unnx2;
% n2y = unny2;
% n2z = unnz2;
% 
% 
% n3x = unnx3;
% n3y = unny3;
% n3z = unnz3;
% 
% n4x = unnx4;
% n4y = unny4;
% n4z = unnz4;
% 
% fx1 = unnx1;
% fy1 = unny1;
% fz1 = unnz1;
% 
% fx2 = unnx2;
% fy2 = unny2;
% fz2 = unnz2;
% 
% 
% fx3 = unnx3;
% fy3 = unny3;
% fz3 = unnz3;
% 
% fx4 = unnx4;
% fy4 = unny4;
% fz4 = unnz4;
% 
% alpha = yo;
% gamma = o;
% beta = ro;
% 
% t11x = ((sin(alpha)*sin(gamma)+cos(alpha)*sin(beta)*cos(gamma))^2*(1-cos(phi1))+cos(phi1))*(sin(alpha)*cos(beta)*n1z+sin(beta)*n1y)+((sin(alpha)*sin(gamma)+cos(alpha)*sin(beta)*cos(gamma))*(-cos(alpha)*sin(gamma)+sin(alpha)*sin(beta)*cos(gamma))*(1-cos(phi1))-cos(beta)*cos(gamma)*sin(phi1))*(-sin(beta)*n1x-cos(alpha)*cos(beta)*n1z)+(cos(beta)*cos(gamma)*(sin(alpha)*sin(gamma)+cos(alpha)*sin(beta)*cos(gamma))*(1-cos(phi1))+(-cos(alpha)*sin(gamma)+sin(alpha)*sin(beta)*cos(gamma))*sin(phi1))*(cos(alpha)*cos(beta)*n1y-sin(alpha)*cos(beta)*n1x);
% 
% t22x = ((sin(alpha)*sin(gamma)+cos(alpha)*sin(beta)*cos(gamma))^2*(1-cos(phi2))+cos(phi2))*(sin(alpha)*cos(beta)*n2z+sin(beta)*n2y)+((sin(alpha)*sin(gamma)+cos(alpha)*sin(beta)*cos(gamma))*(-cos(alpha)*sin(gamma)+sin(alpha)*sin(beta)*cos(gamma))*(1-cos(phi2))-cos(beta)*cos(gamma)*sin(phi2))*(-sin(beta)*n2x-cos(alpha)*cos(beta)*n2z)+(cos(beta)*cos(gamma)*(sin(alpha)*sin(gamma)+cos(alpha)*sin(beta)*cos(gamma))*(1-cos(phi2))+(-cos(alpha)*sin(gamma)+sin(alpha)*sin(beta)*cos(gamma))*sin(phi2))*(cos(alpha)*cos(beta)*n2y-sin(alpha)*cos(beta)*n2x);
% 
% t33x = ((sin(alpha)*sin(gamma)+cos(alpha)*sin(beta)*cos(gamma))^2*(1-cos(phi3))+cos(phi3))*(sin(alpha)*cos(beta)*n3z+sin(beta)*n3y)+((sin(alpha)*sin(gamma)+cos(alpha)*sin(beta)*cos(gamma))*(-cos(alpha)*sin(gamma)+sin(alpha)*sin(beta)*cos(gamma))*(1-cos(phi3))-cos(beta)*cos(gamma)*sin(phi3))*(-sin(beta)*n3x-cos(alpha)*cos(beta)*n3z)+(cos(beta)*cos(gamma)*(sin(alpha)*sin(gamma)+cos(alpha)*sin(beta)*cos(gamma))*(1-cos(phi3))+(-cos(alpha)*sin(gamma)+sin(alpha)*sin(beta)*cos(gamma))*sin(phi3))*(cos(alpha)*cos(beta)*n3y-sin(alpha)*cos(beta)*n3x);
% 
% t44x = ((sin(alpha)*sin(gamma)+cos(alpha)*sin(beta)*cos(gamma))^2*(1-cos(phi4))+cos(phi4))*(sin(alpha)*cos(beta)*n4z+sin(beta)*n4y)+((sin(alpha)*sin(gamma)+cos(alpha)*sin(beta)*cos(gamma))*(-cos(alpha)*sin(gamma)+sin(alpha)*sin(beta)*cos(gamma))*(1-cos(phi4))-cos(beta)*cos(gamma)*sin(phi4))*(-sin(beta)*n4x-cos(alpha)*cos(beta)*n4z)+(cos(beta)*cos(gamma)*(sin(alpha)*sin(gamma)+cos(alpha)*sin(beta)*cos(gamma))*(1-cos(phi4))+(-cos(alpha)*sin(gamma)+sin(alpha)*sin(beta)*cos(gamma))*sin(phi4))*(cos(alpha)*cos(beta)*n4y-sin(alpha)*cos(beta)*n4x);
% 

%%%%%%%%%%%%%%%%

%%%%matrix terms 

abc1 = tx11;

abc2 = unnx1;

abc3 = tx22;

abc4 = unnx2;

abc5 = tx33;

abc6 = unnx3;

abc7 = tx44;

abc8 = unnx4;

abc9 = ty11;

abc10 = unny1 ;

abc11 = ty22;

abc12 = unny2;

abc13 = ty33;

abc14 = unny3;

abc15 = ty44 ;

abc16 = unny4 ;

abc17 = tz11;

abc18 = unnz1;

abc19 = tz22;

abc20 = unnz2;

abc21 = tz33;

abc22 = unnz3;

abc23 = tz44;

abc24 = unnz4;

abc25 = E1(1,1);

abc26 = D1(1,1);

abc27 = E2(1,1);

abc28 = D2(1,1);

abc29 = E3(1,1);

abc30 = D3(1,1);

abc31 = E4(1,1);

abc32 = D4(1,1);

abc33 = E1(2,1)

abc34 = D1(2,1)

abc35 = E2(2,1)

abc36 = D2(2,1)

abc37 = E3(2,1)

abc38 = D3(2,1)

abc39 = E4(2,1)

abc40 = D4(2,1)

abc41 = E1(3,1)

abc42 = D1(3,1)

abc43 = E2(3,1)

abc44 = D2(3,1)

abc45 = E3(3,1)

abc46 = D3(3,1)

abc47 = E4(3,1)

abc48 = D4(3,1)

XX1 = [
      abc9 abc10 abc11 abc12 abc13 abc14 abc15 abc16;
     abc17 abc18 abc19 abc20 abc21 abc22 abc23 abc24;
     abc25 abc26 abc27 abc28 abc29 abc30 abc31 abc32;
     abc33 abc34 abc35 abc36 abc37 abc38 abc39 abc40;
        abc41 abc42 abc43 abc44 abc45 abc46 abc47 abc48
     ]
 
%  abc1 abc2 abc3 abc4 abc5 abc6 abc7 abc8;
 DD = pinv(XX1)
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




Izz = 0.4;
v6 = DD;


