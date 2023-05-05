%% Problem 3: Konfidensintervall for Rayleighfordelning
load wave_data.mat
subplot(2,1,1), plot(y(1:100))
subplot(2,1,2), hist_density(y)
hold on % Gor sa att ploten halls kvar
n = length(y);
my_est = sqrt(sum(y.^2)*(1/(2*n)));
my_est2 = mean(y)/sqrt(pi/2);

% 95% konfidensintervall
lower_bound1 = my_est - sqrt((4-pi)/2) * my_est * 1.96;
upper_bound1 = my_est + sqrt((4-pi)/2) * my_est * 1.96;


my_est2 = mean(y)/sqrt(pi/2);
% 95%
n = length(y);
s = sqrt(sum((y - mean(y)).^2)/(n-1));
d = s/sqrt(n);
lower_bound2 = my_est - 1.96*d;
upper_bound2 = my_est + 1.96*d;


hold on     % Gor sa att ploten halls kvar
plot(lower_bound1, 0, 'r|')
plot(upper_bound1, 0, 'r|')
hold on

hold on     % Gor sa att ploten halls kvar
plot(lower_bound2, 0, 'b|')
plot(upper_bound2, 0, 'b|')
hold on
plot(0:0.1:6, raylpdf(0:0.1:6, my_est), 'r')
hold off