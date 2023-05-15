%% Problem 3: Konfidensintervall for Rayleighfordelning
load wave_data.mat
subplot(2,1,1), plot(y(1:100))
subplot(2,1,2), hist_density(y)
hold on % Gor sa att ploten halls kvar
n = length(y);
my_est = sqrt(sum(y.^2)*(1/(2*n)));
my_est2 = mean(y)/sqrt(pi/2); % MK

% 95% konfidensintervall
% lower_bound1 = my_est - sqrt((4-pi)/2) * my_est * 1.96;
% upper_bound1 = my_est + sqrt((4-pi)/2) * my_est * 1.96;


% 95%
lower_bound2 = my_est2 - my_est2 * sqrt(1/(pi*n)*(4 - pi)) * 1.96;
upper_bound2 = my_est2 + my_est2 * sqrt(1/(pi*n)*(4 - pi)) * 1.96;

% 
% hold on     % Gor sa att ploten halls kvar
% plot(lower_bound1, 0, 'r|')
% plot(upper_bound1, 0, 'r|')
% hold on

hold on     % Gor sa att ploten halls kvar
plot(lower_bound2, 0, 'r|')
plot(upper_bound2, 0, 'r|')
hold on
plot(0:0.1:6, raylpdf(0:0.1:6, my_est), 'r')
hold off