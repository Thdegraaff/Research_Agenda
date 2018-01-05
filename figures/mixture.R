library(ggplot2)
library(gridExtra)
library(ggthemes)
set.seed(10005)

N = 2000

xvar <- c(rnorm(N, mean = 12), rnorm(N, mean = 14))
yvar <- c(rnorm(N, mean = 13), rnorm(N, mean = 14))
zvar <- as.factor(c(rep(1, N), rep(2, N)))
xy <- data.frame(xvar, yvar, zvar)

#basic density
p1<-ggplot(xy, aes(xvar)) + geom_density() + 
  xlab("ln(housing prices)")+ theme_economist() + scale_colour_economist() 

#histogram with density line overlaid
p2<-ggplot(xy, aes(x=xvar)) + 
  geom_histogram(aes(y = ..density..), color="black", fill=NA) +
  geom_density(color="blue") + 
  xlab("ln(housing prices)")+ theme_economist() + scale_colour_economist() 

#split and color by third variable, alpha fades the color a bit
p3<-ggplot(xy, aes(xvar, fill = zvar)) + geom_density(alpha = 0.5)+ 
  xlab("ln(housing prices)") +theme_economist() + scale_colour_economist() + labs(fill="Group") 

grid.arrange(p1, p2, p3, nrow=1)