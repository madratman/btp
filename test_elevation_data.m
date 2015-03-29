dirs = dir('data/elevation/e*');
for i = 1:10,
	directory = dirs(i).name;
	files = dir(strcat('data/elevation/', directory, '/*dt0'));
	for j = 1:numel(files),
		file = files(j);
		file.name;
		% strcat('data/elevation/',directory, file.name)
		z = dted(strcat('data/elevation/',directory, '/', file.name))
		x = 1:size(z, 1);
		y = 1:size(z, 2);
		figure
		surf(x, y, z)
		title(strcat('data/elevation/',directory, '/', file.name))
	end
end
	% files = dted('data/elevation')

