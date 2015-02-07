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
lf0 = 1.39; %initial biofilm thickness


% data history
co = co_star; %initial oxygen concentration
mu = muMax * co / (kO + co); %initial growth rate
ea = 1; %initial live cell fraction
lf = lf0; %initial biofilm thickness
ca = ca_star; %initial antibiotic concentration

data = zeros(length(t), 5);
data(1, :) = [co mu ea lf ca];


% Euler parameters
dt = 0.01;
t = 0:dt:20;

%Euler integration
for i = 2:length(t)
    
    
    
end
