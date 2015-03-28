function interpolant = create_interpolant(j);
	data = load('data/csvlist_26_03_2015.dat');
	num_rows = 1000
	x = data(1:num_rows, 1);
	y = data(1:num_rows, 2);
	alpha = data(1:num_rows, 3);
	aj3 = data(1:num_rows, 4+j);
	scatteredInterpolant(x,y,alpha,aj3)