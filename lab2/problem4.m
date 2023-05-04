%% Problem 4: Fordelningar av givna data
load birth.dat

% Vill plotta en figur med fyra olika histogram som visar fördelningarna för barnets födelsevikt, moderns ålder, moderns längd respektive moderns vikt.
% Barnets vikt - 3
% Moderns ålder - 4
% Moderns längd - 16
% Moderns vikt - 15

barnVikt = birth(:, 3);
moderAlder = birth(:, 4);
moderLangd = birth(:, 16);
moderVikt = birth(:, 15);


subplot(2,1,2), hist_density(barnVikt)
title('Barn Vikt')

subplot(2,1,2), hist_density(moderAlder),
title('Moder Alder')

subplot(2,1,2), hist_density(moderLangd),
title('Moder Langd')

subplot(2,1,2), hist_density(moderVikt),
title('Moder Vikt')



% x = birth(birth(:, 20) < 3, 3);
% y = birth(birth(:, 20) == 3, 3);

% % Problem 4: Fordelningar av givna data (forts.)
% subplot(2,2,1), boxplot(x),
% axis([0 2 500 5000])
% subplot(2,2,2), boxplot(y),
% axis([0 2 500 5000])

% %% Problem 4: Fordelningar av givna data (forts.)
% subplot(2,2,3:4), ksdensity(x),
% hold on
% [fy, ty] = ksdensity(y);
% plot(ty, fy, 'r')
% hold off