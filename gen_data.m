% A1 = 3.5*0.50;
% a1 = 0.50;
% B1 = 3.5*0.50;
% b1 = 0.5;

parameters = [
[2.75 1.0 6.25 0.75];
[1.75 1.5 2.50 0.25];
[1.50 1.2 1.75 1.40];
[1.75 1.5 1.75 0.75];
[1.75 0.5 1.50 0.90];
];

for i = 1:5

	A1 = parameters(i, 1)
	a1 = parameters(i, 2)
	B1 = parameters(i, 3)
	b1 = parameters(i, 4)

	syms x y;
	terrain_eqn = A1*cos(a1*x)+B1*sin(b1*y)
	generate_aj3(terrain_eqn)

end