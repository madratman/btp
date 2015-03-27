% for i = 1:4,
i = 1;
    weights = importdata(strcat('weights', int2str(i), '.dat'));
    n = 100
    b2 = weights.b{2}
    b1 = weights.b{1}
    IW = weights.IW{1}
    LW = weights.LW{2}
 	values = []
    inputs = inputs'
    for i = 1:n
        inputs_curr = inputs(:,i);
    	aj3_curr = double(b2 + LW*tanh(b1+IW*inputs_curr));
        values = [values; aj3_curr];
        i
    end
    
% endAQA@2