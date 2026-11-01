AIM: To calculate and visualize the average marks in Mathematics, Science, and English using a bar chart in R.

ALGORITHM:
1. Create the student dataset.
2. Calculate the average marks for each subject using `colMeans()`.
3. Draw a bar chart using `barplot()`.
4. Add a horizontal line representing the overall average.
5. Display a legend for the overall average.

PROGRAM:
students <- data.frame(
  Student = c("Alice", "Bob", "Charlie", "Diana", "Eve",
              "Frank", "Grace", "Henry", "Ivy", "Jack"),
  Math = c(88, 72, 91, 65, 78, 85, 60, 95, 70, 83),
  Science = c(76, 85, 88, 70, 92, 79, 68, 90, 74, 80),
  English = c(82, 68, 75, 80, 70, 88, 72, 85, 77, 79),
  Hours = c(5.0, 4.0, 6.0, 3.0, 7.0,
            5.5, 3.5, 7.0, 4.0, 5.0)
)
avgs <- colMeans(students[, c("Math", "Science", "English")])
barplot(
  avgs,
  main = "Average Subject Scores",
  xlab = "Subject",
  ylab = "Average Score",
  col = c("#3498db", "#2ecc71", "#e74c3c"),
  ylim = c(0, 100),
  border = "black"
)
abline(h = mean(avgs), col = "darkgray", lty = 2)
legend(
  "topright",
  legend = paste("Overall Avg:", round(mean(avgs), 1)),
  lty = 2,
  col = "darkgray"
)

RESULT:
The bar chart was successfully created to compare average subject scores, with a horizontal line indicating the overall average.
