%% Problem 2: Maximum likelihood/Minsta kvadrat
M = 1e4;
b = 4;
x = raylrnd(b, M, 1);
hist_density(x, 40)
hold on
my_est_ml = sqrt(sum(x.^2)*1/(2*M)); % Skriv in din ML-skattning har
my_est_mk = mean(x)/sqrt(pi/2); % Skriv in din MK-skattning har
plot(my_est_ml, 0, 'b*')
plot(my_est_mk, 0, 'g*')
plot(b, 0, 'ro')
hold on
plot(0:0.1:6, raylpdf(0:0.1:6, my_est_ml), 'r')
hold off