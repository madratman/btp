function [ ] = plot_script( xy_file )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
data = importdata(xy_file)
x = data(1);
y = data(2);
syms t;
%%%%%%%%%%%%%% surface equation
% A1_plot = 3.5*0.50;
% a1_plot = 0.50;
% B1_plot = 3.5*0.50;
% b1_plot = 0.50;
%%%%%%%%%%%%%

A1_plot = 1.75;
a1_plot = 1.5;
B1_plot = 1.75;
b1_plot = 0.75;

% h(1) = figure;
figure;
axis equal;
z = A1_plot*sin(a1_plot*x) + B1_plot*cos(b1_plot*y);	
p1 = ezplot3(x,y,z, [1, 10]);%plots traj 
% p1.Color = 'white';
% set(p1, 'Color', red);
set(p1,'color','w','LineWidth',4)

% p1.LineStyle = '--';
% p1.LineWidth = 15;

hold on;
[x_plot,y_plot] = meshgrid(0:.1:10);
Z = A1_plot*sin(a1_plot*x_plot) + B1_plot*cos(b1_plot*y_plot);	
surf(x_plot, y_plot, Z);%plots surface
% h(2) = figure;
% figure;
% fileparams = ['50psi_10A_Sawtooth_05Hz']
% filename = [fileparams '.fig']
% savefig('50psi_10A_Sawtooth_05Hz.fig')
% savefig(strcat('plots/plot_', 'xy_file', '.fig'))

end

