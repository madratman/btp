for i = 1:4,
	interpolant = create_interpolant(i);
	save(strcat('data/a', int2str(i), '3-interpolant', '.dat'), 'interpolant');
	interpolant(0.2, 2, 0.2)
end