load birth.dat

barnVikt = birth(:, 3);
moderLangd = birth(:, 16);
moderVikt = birth(:, 15);
moderRokare = birth(:, 20);
for i = 1:length(moderRokare)
    if(moderRokare(i) < 3)
        moderRokare(i) = 0;
    else
        moderRokare(i) = 1;
    end
end

moderAlkoholist = birth(:, 26);
for i = 1:length(moderAlkoholist)
    if(moderAlkoholist(i) < 2)
        moderAlkoholist(i) = 0;
    else
        moderAlkoholist(i) = 1;
    end
end

% skatta barnets vikt givet moderns längd
X = [ones(length(moderLangd), 1) moderLangd];
[beta_hat, interval] = regress(barnVikt, X);
barnViktApprox = X*beta_hat;

% skatta barnets vikt givet moderVikt moderRökVanor moderAlkoholVanor
X1 = [ones(length(moderVikt), 1) moderVikt moderRokare moderAlkoholist];
[beta_hat1, interval1, residual] = regress(barnVikt, X1);
barnViktApprox1 = X1*beta_hat1;

normplot(residual)
