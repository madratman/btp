function interpolant = create_interpolant(j);
	data = load('data/csvlist_26_03_2015.dat');
	% initial_rows = size(data, 1);
	% final_rows = 1331;
	% initial_step = nthroot(initial_rows, 3);
	% final_step = nthroot(final_rows, 3);

	% x = data(1:initial_step*initial_step:initial_rows, 1);
	% x = x(1:ceil(initial_step/final_step):end);

	% y = data(1:initial_step:initial_step*initial_step, 2);
	% y = y(1:ceil(initial_step/final_step):end);
	[x, y, alpha] = ndgrid([0:0.1:10], [0:0.1:10], [-3.14:0.0628:3.14]);
	aj3 = reshape(data(:, 4+j), [101, 101, 101]);
	% size(x)
	% size(y)
	% size(alpha)
	% size(aj3)

	interpolant = griddedInterpolant(x,y,alpha,aj3);
	% interpolant