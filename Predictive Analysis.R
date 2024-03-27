library(caret)
library(randomForest)

# Encode the 'Position' variable
nba_players$Position <- as.factor(nba_players$Position)
nba_players$Position_encoded <- as.numeric(nba_players$Position)

# Prepare the data
features <- c("Age", "WS", "VORP", "Position_encoded")
target <- "Salary"

# Split the data
set.seed(42)
trainIndex <- createDataPartition(nba_players[[target]], p = .8, list = FALSE)
trainData <- nba_players[ trainIndex, features]
testData <- nba_players[-trainIndex, features]
train_target <- nba_players[trainIndex, target]
test_target <- nba_players[-trainIndex, target]

# Train a Random Forest model
rf_model <- randomForest(trainData, train_target)

# Predict on test set
predictions <- predict(rf_model, testData)

# Calculate RMSE
rmse <- sqrt(mean((predictions - test_target)^2))
print(paste("RMSE:", rmse))
