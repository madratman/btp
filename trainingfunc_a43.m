b1====================================================================================================================================================================================== [ -3.7470
    8.2296
    0.3040
    2.7555
    3.1886
    0.8304
   -1.0590
   -2.9320
   15.4728
   -5.2184
];

b2 = 3.9946;

IW = [
    1.5566   -0.6188   -2.6187
   -0.0269   -0.1634   -7.3751
   -2.6719   -0.1504    6.7697
   -4.9543   -0.2083    2.3255
   -0.4008    0.1440    3.2824
    2.0823    3.2504   -0.3452
   -0.1624    0.8238   -0.6320
    0.0318   13.1291    2.0471
   -0.3117    0.0401   19.1097
   -0.8416    0.3087   -4.6984
    ];


LW = [ -0.7087, -1.16, -0.186, 0.01817, -4.8, -0.02026, 0.1657, -0.00513, 3.176, 2.19];
      
%   X = [ 1     1       1 ];
 a43 = b2 + LW*tanh(b1+IW*X);