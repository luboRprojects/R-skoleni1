auta <- read.table("cars.txt", header=TRUE, sep=" ")
str(auta)

head(auta)
spotreba <- auta$mpg

library(lattice)
xyplot(hp ~ mpg| factor(cyl), data = auta)
bwplot(hp ~ factor(cyl), data = auta)

maximum <- apply(auta, 2, max)
minimum <- apply(auta, 2, min)

vysledky <- rbind(maximum, minimum)

library(plyr)
auta.st <- ddply(auta, .(cyl), summarise,
      prum.spotreba = mean(mpg),
      max.vykon = max(hp),
      smodch.vykon = sd(hp))

library(ggplot2)
l0 <- ggplot(auta.st, aes(x=cyl, y=max.vykon))
l0 + geom_point(colour=auta.st$prum.spotreba)

l1 <-ggplot(auta, aes(x=mpg, y=hp, color= as.factor(cyl) ) )
l1 + geom_point(aes(size = mpg))
