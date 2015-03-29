function p = fit_terrain_data(terrain_file)
	addpath('lib')
	[x, y] = meshgrid(1:121);
	x = reshape(x, [121*121,1]);
	y = reshape(y, [121*121,1]);

	Z = dted(terrain_file);
	Z = reshape(Z, [121*121,1]);

	p = polyfitn([x,y],Z,15);
	p = polyn2sym(p); 
	ezsurf(p, [1, 121]);

	[directory, filename, ext] = fileparts(terrain_file);
	[root, parent, ext] = fileparts(directory);
	save(strcat('data/terrain-fit-', strcat(parent, filename), '-', datestr(now, 30), '.dat'), 'p');