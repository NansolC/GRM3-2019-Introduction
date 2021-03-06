clearvars
clc
close all

N_ini = 50e3;
N_t = linspace(0,10,11);
r = 0.48;

%% Numerical Solution
NN = zeros(1,11);
NN(1)= N_ini;
for i=2:length(N_t)
    NN(i) = NN(i-1) + NN(i-1) * r;
end

%% Analytical Solution
AN = N_ini.*exp(r.*N_t) + 1;

%%
figure;
plot(N_t,NN)
hold on
plot(N_t,AN)
title('Wild Boar Population')
xlabel('Time')
ylabel('Wild Boar')
legend('Numerical Solution', 'Analytical Solution')