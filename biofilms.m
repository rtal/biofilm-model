% constants
ka = 0.029; %antibiotic kill rate (no reaction)
kd = 1; % detachment rate
do = 0.09; %oxygen diffusion coefficient
tau = 0.9; %biofilm bulk diffusivity ratio
yxO = 0.24; %oxygen yield coefficient
kO = 0.1; %oxygen monod coefficient
ec = 0.1; %cell volume fraction
da = 0.02; %antibiotic diffucion coefficient
kr = 0.0016; %antibiotic reaction rate
ca_star = 505; %antibiotic bulk fluid concentration
px = 47000; %cell intrinsic density
co_star = 0.035; %oxygen bulk fluid concentration
muMax = 0.3; %max specific growth rate
lf0 = 1.4; %initial biofilm thickness



% Euler parameters
dt = 0.01;
t = 0:dt:20;
w = 100; %width cells, 1 box = 0.1um
z = 100; %height cells, 1 box = 0.1um
dz = 0.1;
dw = 0.1;


% data history
co = zeros(z, w); %initial oxygen concentration (not biofilm)
r = ceil(lf0/dz);
for i = 1 : r
    for j = 1 : w
        co(z-i+1, j) = co_star;
    end
end
%%
%co(z - floor(lf0/dz):z, 1:w) = co(z - floor(lf0/dz):z, 1:w) + coBottom;
mu = muMax * co / (kO + co); %initial growth rate
ea = 1; %initial live cell fraction
lf = lf0; %initial biofilm thickness
ca = ca_star * ones(1, w); %initial antibiotic concentration

data_ = zeros(length(t), 3);
data(1, :) = [mu ea lf];


% Euler integration
for i = 2:length(t)
   % forward difference for w = 1
   
   
   
   for j = 2:w-1
       % regular euler
       
   end
   
   % j = 100
    
    
    
    
end