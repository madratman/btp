A1_plot = 3.5*0.50;
a1_plot = 0.50;
B1_plot = 3.5*0.50;
b1_plot = 0.50;
alphat = 0;
% for alphat = -3.14:1.57:3.14
	data = importdata(strcat('x-y-', num2str(alphat), '.dat'));
	data;
	X = data(1:11:121, 1)
	Y = data(1:11, 2)
	% alpha = alphat;
	% size(X), size(Y), size(Z)
	Z = reshape(data(:, 5), [11, 11]);
	figure
	surf(X, Y, Z)
	Z = reshape(data(:, 6), [11, 11]);
	figure
	surf(X, Y, Z)	
	Z = reshape(data(:, 7), [11, 11]);
	figure
	surf(X, Y, Z)	
	Z = reshape(data(:, 8), [11, 11]);
	figure
	surf(X, Y, Z)
	% Z = reshape(data(:, 6), [11, 11]);
	[x_plot,y_plot] = meshgrid(1:1:10);
	z_ = A1_plot*sin(a1_plot*x_plot) + B1_plot*cos(b1_plot*y_plot);
	figure
	surf(x_plot, y_plot, z_)
	% view
% end
% 