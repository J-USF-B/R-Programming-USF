
library(lattice)
library(ggplot2)

USAGasG <- read.csv("C:\\Users\\jesse\\Desktop\\USF College Work\\LIS4370 (R) Programming\\USGasG.csv")

colnames(USAGasG)[1] <- "Year"

USAGasG$Year <- seq(1960, 1995)

#Line plot with basic R
plot(USAGasG$Year, USAGasG$price, type = "l", col = "blue", lwd = 2,
     xlab = "Year", ylab = "Gas Price", main = "Gas Price Over Time: Basic R")

#Line plot with Lattice
xyplot(price ~ Year, data = USAGasG, type = "l", 
       col = "blue", lwd = 2, 
       xlab = "Year", ylab = "Gas Price",
       main = "Gas Price Over Time: Lattice")

#Ggplot2 line plot
ggplot(USAGasG, aes(x = Year, y = price)) +
  geom_line(color = "blue", size = 1.2) +
  labs(title = "Gas Price Over Time: ggplot2", x = "Year", y = "Gas Price") +
  theme_minimal()
