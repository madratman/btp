a = rand(12, 1);
% req_coeff = fmincon(@obj,a,[],[],[],[],[],[],@nonlcon);
global interp_a13;
interp_a13 = importdata('data/a13-interpolant.dat');

global interp_a23;
interp_a23 = importdata('data/a23-interpolant.dat');

global interp_a33;
interp_a33 = importdata('data/a33-interpolant.dat');

global interp_a43;
interp_a43 = importdata('data/a43-interpolant.dat');


[req_coeff,fval,exitflag,output,lambda,grad,hessian] = fmincon(@obj,a,[],[],[],[],[],[],@nonlcon)
save(strcat('req_coeff-', datestr(now, 30), '.dat'), 'req_coeff');
% call results, save plots, (and x, y, alpha, z functions)