plot(nyc,main="Pair Wise Scatter Plot")
round(cor(nyc),3)
nycmod=lm(formula=Price~Food+Decor+Service+East,data=nyc)
summary(nycmod)
nycmod1=lm(formula=Price~Food+Decor+East,data=nyc)
summary(nycmod1)
