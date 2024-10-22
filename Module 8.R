
install.packages("plyr")
library(plyr)
library(data.table)

student_assignment_6 <- read.table("C:\\Users\\jesse\\Desktop\\USF College Work\\LIS4370 (R) Programming\\Assignment 6 Dataset.txt", sep = ",", header = TRUE)
student_assignment_6

# Calculate the mean for 'Grade' based on 'Sex'
StudentAverage <- ddply(student_assignment_6, "Sex", transform, Grade.Average = mean(Grade))

# Write the result to a file
write.table(StudentAverage, "Students_Gendered_Mean.txt", row.names = FALSE)

# Filter the original data set to include only data for which the student's name
# contains the letter "i"
i_students <- subset(student_assignment_6, grepl("i", Name, ignore.case = TRUE))

# Display the filtered data
i_students

i_students_df <- as.data.frame(i_students)
write.csv(i_students_df, "Filtered_Students.csv", row.names = FALSE)
