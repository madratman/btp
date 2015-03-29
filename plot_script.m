function [ ] = plot_script( xy_file )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
data = importdata(xy_file)
x = data(1);
y = data(2);
syms t;

%%%%%%%%%%%%%% surface equation
A1_plot = 3.5*0.50;
a1_plot = 0.50;
B1_plot = 3.5*0.50;
b1_plot = 0.50;
%%%%%%%%%%%%%


% h(1) = figure;
figure;
z = A1_plot*sin(a1_plot*x) + B1_plot*cos(b1_plot*y);	
ezplot3(x,y,z, [1, 10]);%plots traj 

hold on;
[x_plot,y_plot] = meshgrid(0:.1:10);
Z = A1_plot*sin(a1_plot*x_plot) + B1_plot*cos(b1_plot*y_plot);	
surf(x_plot, y_plot, Z);%plots surface
% h(2) = figure;
% figure;

end

