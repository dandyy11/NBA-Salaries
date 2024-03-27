library(readxl)
library(dplyr)
library(ggplot2)

# Load the dataset
nba_players <- read_excel("E:/Baylor Material/STA 5V85 - Capstone/NBA.csv")

# Basic overview
total_players <- nrow(nba_players)
average_salary <- mean(nba_players$Salary)
average_age <- mean(nba_players$Age)
position_distribution <- prop.table(table(nba_players$Position)) * 100

# Print overview
cat("Total Players:", total_players, "\n")
cat("Average Salary:", average_salary, "\n")
cat("Average Age:", average_age, "\n")
print(position_distribution)

