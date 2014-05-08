url.cars<-"http://www.stat.ucla.edu/~jeroen/ggplot2/mtcars.txt"
data.cars <- read.table(url.cars,sep=" ", header=TRUE)


install.packages(qauntmod)
library(quantmod)
google.data <- getSymbols("INDEXDJX:GOOG",src="google",
           from = "2007-01-01",to = Sys.Date())

getSymbols("AAPL",src="yahoo") 
barChart(AAPL)

casove.rady <- new.env()
start.date = as.Date("2010-12-31") 
end.date = as.Date("2014-05-04")
akcie <- c("GOOG","UKX")

getSymbols(akcie, env = casove.rady, src = "yahoo", from = startDate, to = endDate)

head(casove.rady$GOOG)
tail(casove.rady$UKX)
barChart(casove.rady$UKX)
