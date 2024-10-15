#Generic functions
summary(airquality)
plot(airquality$Ozone, airquality$Temp, main="Scatter plot of Ozone vs Temperature")
mean(airquality$Ozone, na.rm=TRUE)

#S3 and S4 classes
airquality_S3 <- list(Ozone = airquality$Ozone, Temp = airquality$Temp, Month = airquality$Month)
class(airquality_S3) <- "AirData"

# Define a simple print method for the S3 class
print.AirData <- function(x) {
  cat("Air Quality Data Summary:\n")
  cat("Average Ozone:", mean(x$Ozone, na.rm=TRUE), "\n")
  cat("Average Temperature:", mean(x$Temp, na.rm=TRUE), "\n")
}

# Use the print method
airquality_S3


setClass("AirDataS4",
         slots = list(Ozone = "numeric", Temp = "numeric", Month = "integer"))

# Create an instance of the class
airquality_S4 <- new("AirDataS4", Ozone = airquality$Ozone, Temp = airquality$Temp, Month = airquality$Month)

# Define a method for showing the object
setMethod("show", "AirDataS4", function(object) {
  cat("Air Quality Data (S4):\n")
  cat("Ozone Average:", mean(object@Ozone, na.rm=TRUE), "\n")
  cat("Temperature Average:", mean(object@Temp, na.rm=TRUE), "\n")
})

# Use the show method
airquality_S4
isS4(airquality_S4)
typeof(airquality_S4)
