%% Problem 2: Maximum likelihood/Minsta kvadrat
M = 1e4;
b = 4;
x = raylrnd(b, M, 1);
hist_density(x, 40)
hold on
my_est_ml = % Skriv in din ML-skattning har
my_est_mk = % Skriv in din MK-skattning har
plot(my_est_ml, 0, 'r*')
plot(my_est_mk, 0, 'g*')
plot(b, 0, 'ro')
hold off