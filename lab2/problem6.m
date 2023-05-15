%% Problem 6

load moore.dat
% Bildar vår X matris med 1or och årtalen (x_i)
X = ones(length(moore(:, 1)), 2);
X(:, 2) = moore(:, 1);
Y = moore(:, 2);

w = log(Y);

[beta_hat,~, ~, ~, stats] = regress(w, X);

% här är allt annat än beta_hat och stats ointressant, därför ~. Specifikt
% innehåller stats(1) vårt R^2 värde.
% w_star är vår skattning för log(y)
% w_star = beta_hat(1) + beta_hat(2)*moore(:, 1);
% w är vårt riktiga värde, X*beta_hat är vår skattning för w

res = w-X*beta_hat;

subplot(2,2,1), normplot(res)
subplot(2,2,2), hist(res)
% subplot(2,2,3), plot(moore(:,1), Y)
% subplot(2,2,4), plot(moore(:, 1), exp(1).^(X*beta_hat))
% subplot(2,1,1), normplot(res)
% subplot(2,1,2), hist(res)


r2 = stats(1); % 0.9586

y2025 = exp(1)^(beta_hat(1) + beta_hat(2)*2025); % 1.3599e+08

loglog(moore(:, 1), moore(:, 2))
hold on
loglog(moore(:, 1), exp(1).^(X*beta_hat))
xlabel("År")
ylabel("Antal transistorer")

