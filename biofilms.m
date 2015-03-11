clear all

% Euler parameters
dt = 0.01;
t = 0:dt:1;

% constants
ka = 0.1; %antibiotic kill rate (no reaction)
kd = 0.01; %regular death rate
kO = 0.1; %oxygen monod coefficient
kr = 0.5; %antibiotic reaction rate
muMax = 0.5; %max specific growth rate
nCells = 100;

sourceo2 = ones(length(t), 1);
sourceaB = 0.5*ones(length(t), 1);

%variable vectors
o2 = zeros(length(t), 1); %oxygen concentration
eA = zeros(length(t), 1); %live cell fraction
ab = zeros(length(t), 1); %antibiotic concentration

%initial conditions
o2(1, 1) = 1;
ab(1, 1) = 5;
eA(1, 1) = nCells/nCells;


% Euler integration
for i = 1:length(t)-1
    o2(i+1, 1) = (-muMax*o2(i, 1)*eA(i, 1))*dt + o2(i, 1) + sourceo2(i, 1);
    ab(i+1, 1) = (-kr*ab(i, 1)*eA(i, 1))*dt + ab(i, 1) + sourceaB(i, 1);
    
    eA(i+1, 1) = (muMax*o2(i, 1)*eA(i, 1) - kd*eA(i, 1) - kr*ab(i, 1)*eA(i, 1)*ka)*dt + eA(i, 1);
    eA(i+1, 1) = eA(i+1, 1);
    
    %o2(i+1, 1) = (-muMax*(o2(i, 1) / (kO + o2(i, 1)))*eA(i, 1))*dt + o2(i, 1)  + sourceo2(i, 1);
    %ab(i+1, 1) = (-kr*ab(i, 1)*eA(i, 1))*dt + ab(i, 1) + sourceaB(i, 1);
    
    %eA(i+1, 1) = (muMax*(o2(i, 1)/ (kO + o2(i, 1)))*eA(i, 1) - kd*eA(i, 1) - kr*aB(i, 1)*eA(i, 1)*ka)*dt + eA(i, 1);
    
end

plot(eA)