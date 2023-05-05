load birth.dat

barnVikt = birth(:, 3);
moderAlder = birth(:, 4);
moderLangd = birth(:, 16);
moderVikt = birth(:, 15);

subplot(2,2,1), qqplot(barnVikt)
title('Barnets Födelsevikt')
ylabel('Vikt')

subplot(2,2,2), qqplot(moderAlder)
title('Moderns Ålder')
ylabel('Ålder')

subplot(2,2,3), qqplot(moderLangd)
title('Moderns Längd')
ylabel('Längd')

subplot(2,2,4), qqplot(moderVikt)
title('Moderns Vikt')
ylabel('Vikt')

alpha = 0.05;
barnViktH = jbtest(barnVikt, alpha);
moderAlderH = jbtest(moderAlder, alpha);
moderLangdH = jbtest(moderLangd, alpha);
moderViktH = jbtest(moderVikt, alpha);

disp(barnViktH)
disp(moderAlderH)
disp(moderLangdH)
disp(moderViktH)