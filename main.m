a = rand(12, 1);
% req_coeff = fmincon(@obj,a,[],[],[],[],[],[],@nonlcon);
[req_coeff,fval,exitflag,output,lambda,grad,hessian] = fmincon(@obj,a,[],[],[],[],[],[],@nonlcon)
save(strcat('req_coeff-', datestr(now, 30), '.dat'), 'req_coeff');
% call results, save plots, (and x, y, alpha, z functions)