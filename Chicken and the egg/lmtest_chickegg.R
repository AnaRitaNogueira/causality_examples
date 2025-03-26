install.packages("lmtest")

library(lmtest)
data(ChickEgg)


grangertest(egg ~ chicken, order = 2, data = ChickEgg)
## eggs granger-cause chickens?
grangertest(chicken ~ egg, order = 2, data = ChickEgg)

write.csv(x = ChickEgg, "ChickEgg.csv")
