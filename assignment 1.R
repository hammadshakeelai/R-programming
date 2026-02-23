# 1. Input the data (Percentage column)
scores <- c(11, 15, 74, 80, 67, 92, 91, 12, 61, 80, 5, 61, 8, 8, 88, 15, 9, 79, 11, 8, 97, 16, 84, 87, 97, 0, 60, 16, 17, 17, 8, 84, 9, 87, 14, 87, 61, 5)

# 2. Define bins/intervals
breaks <- seq(0, 100, by=20)

# 3. Create Frequency Distribution
intervals <- cut(scores, breaks, right=FALSE)
freq_table <- table(intervals)
print(freq_table)

# 4. Summary Statistics
mean_score <- mean(scores, na.rm = TRUE)
sd_score <- sd(scores, na.rm = TRUE)
cat("Mean Score:", mean_score, "\n")
cat("Standard Deviation:", sd_score, "\n")

# 5. Visualization (Histogram)
hist(scores, breaks=breaks, col="skyblue", 
     main="Frequency Distribution of Data Structures Marks",
     xlab="Percentage Score", ylab="Number of Students")
