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

% Skapa en ny figur
figure

% Histogram för barnets födelsevikt
subplot(2, 2, 1), hist_density(barnVikt)
title('Barnets Födelsevikt')
xlabel('Vikt')
ylabel('Normaliserad frekvens')

% Histogram för moderns ålder
subplot(2, 2, 2), hist_density(moderAlder)
title('Moderns Ålder')
xlabel('Ålder')
ylabel('Normaliserad frekvens')

% Histogram för moderns längd
subplot(2, 2, 3), hist_density(moderLangd)
title('Moderns Längd')
xlabel('Längd')
ylabel('Normaliserad frekvens')

% Histogram för moderns vikt
subplot(2, 2, 4), hist_density(moderVikt)
title('Moderns Vikt')
xlabel('Vikt')
ylabel('Normaliserad frekvens')



%% Forts
x = birth(birth(:, 20) < 3, 3);
y = birth(birth(:, 20) == 3, 3);
% Problem 4: Fordelningar av givna data (forts.)
subplot(2,2,1), boxplot(x),
axis([0 2 500 5000])
subplot(2,2,2), boxplot(y),
axis([0 2 500 5000])

%% Problem 4: Fordelningar av givna data (forts.)
subplot(2,2,3:4), ksdensity(x),
hold on
[fy, ty] = ksdensity(y);
plot(ty, fy, 'r')
hold off

%% Problem 4: Fördelningar av givna data - alkohol och barnets födelsevikt
ickeAlk = birth(birth(:, 26) < 2, 3);
medAlk = birth(birth(:, 26) == 2, 3);

subplot(2,2,1), boxplot(ickeAlk),
axis([0 2 500 5000])
subplot(2,2,2), boxplot(medAlk),
axis([0 2 500 5000])

subplot(2,2,3:4), ksdensity(ickeAlk),
hold on
[fAlk, tAlk] = ksdensity(medAlk);
plot(tAlk, fAlk, 'r')
hold off