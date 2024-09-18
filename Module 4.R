Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
First <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
Second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)

# Set up a 1x2 layout for the boxplots
par(mfrow = c(1, 2))

# Individual boxplots with their own y-axis limits (ylim)
boxplot(Frequency, main = "Frequency of Visits", col = "lightblue", ylim = c(0, 1))
boxplot(BP, main = "Blood Pressure", col = "lightgreen", ylim = c(30, 220))

# Histogram for Frequency
hist(Frequency, main = "Histogram of Frequency", col = "lightblue", xlab = "Frequency of Visits", ylab = "Frequency")

# Histogram for BP
hist(BP, main = "Histogram of Blood Pressure", col = "lightgreen", xlab = "Blood Pressure", ylab = "Frequency")

# Reset layout back to default
par(mfrow = c(1, 1))
