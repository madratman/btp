b1 = [ -10.4516
   -5.7052
   -0.7951
  -13.1538
    3.9114
   -6.1394
   -0.4011
    2.8636
    0.8483
    9.4995
];

b2 = 0.8362;

IW = [
    2.0966   -1.0469  -10.4294
    5.7643   -8.2782  -13.3074
    0.5825    0.3016  -35.0526
   -0.4550   -0.1197   17.1459
  -11.6818   -1.8381   -7.1591
    0.6955   -0.1263   13.9630
    0.1534   -0.0718   -0.5131
    0.1074   -0.0127   -4.3034
   -0.0841   -0.2454    4.0026
   -5.0656   -0.9056   -6.1161
    ];


LW = [ -0.1252, 0.02031, -0.8538, -1.45, -0.003921, -0.5225, 0.9355, -2.348, -0.7498, 0.05749];
      
%   X = [ 1     1       1 ];
 a23 = b2 + LW*tanh(b1+IW*X);