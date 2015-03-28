A1 = 3.5*0.50;
a1 = 0.50;
B1 = 3.5*0.50;
b1 = 0.5;

syms x y;
terrain_eqn = A1*cos(a1*x)+B1*sin(b1*y)-(-A1*a1*sin(a1*x)*x+B1*b1*cos(b1*y)*y)
generate_aj3(terrain_eqn)