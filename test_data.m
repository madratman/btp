data = load('data/btp.mat');
rows_limit = 1000
x = data(1:rows_limit, 1);
y = data(1:rows_limit, 2);
alpha = data(1:rows_limit, 3);
a13 = data(1:rows_limit, 5);
a23 = data(1:rows_limit, 6);
a33 = data(1:rows_limit, 7);
a43 = data(1:rows_limit, 8);
X = [x'; y'; alpha'];

for i = 1:4,
    weights = importdata(strcat('data/weights', int2str(i), '.dat'));
	b2 = repmat(weights.b{2}, 1, rows_limit);
	b1 = repmat(weights.b{1}, 1, rows_limit);
	IW = weights.IW{1};
	LW = weights.LW{2};
	aj3_trained = double(b2 + LW*tanh(b1+IW*X));
end

data = [x, y, alpha, data.btp.a13, aj3_trained'];
csvwrite(strcat('data/aj3_trained-', datestr(now, 30), '.dat'), data);
