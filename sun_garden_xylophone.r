# Building Community -- 2000 Lines of R Code

# Loading packages and data
library(dplyr)
library(ggplot2)
data = read.csv("community_data.csv")

# Basic data exploration
summary(data)
str(data)

# Creating custom function to calculate mean value for each variable
calc_mean <- function(x) {
  mean(x, na.rm = TRUE)
}

# Calculating mean values for each variable
means <- data %>%
  summarise_all(funs(calc_mean))

# Visualzing distributions of each variable
ggplot(data, aes(x = income)) +
  geom_histogram()

ggplot(data, aes(x = education_level)) +
  geom_bar()

ggplot(data, aes(x = age)) +
  geom_histogram()

# Calculating correlation between variables
correlation_matrix <- cor(data)

# Building linear model
model <- lm(education_level ~ age + income, data)

# Checking model assumptions
plot(model)

# Evaluating model performance
summary(model)

# Plotting linear regression line
ggplot(data, aes(x = age, y = education_level)) +
  geom_point() +
  geom_smooth(method = 'lm', se = FALSE)

# Testing for interaction effects
model_interaction <- lm(education_level ~ age * income, data)

# Comparing results from the two models
anova(model, model_interaction)

# Calculating predicted values
prediction <- predict(model, newdata = data)

# Visualizing predictions
ggplot(data, aes(x = age, y = education_level)) +
  geom_point() +
  geom_line(aes(y = prediction))

# Calculating accuracy of predictions
sqrt(mean((data$education_level - prediction)^2))

# Creating dummy variables
dummy_data <- data
dummy_data$edu_level_high <- ifelse(dummy_data$education_level > 10, 1, 0)

# Building logistic regression model
log_model <- glm(edu_level_high ~ age + income, data = dummy_data, family = binomial)

# Checking model assumptions
plot(log_model)

# Evaluating model performance
summary(log_model)

# Calculating predicted probabilities
prediction_probs <- predict(log_model, type = "response", newdata = dummy_data)

# Visualizing predictions
ggplot(dummy_data, aes(x = age, y = edu_level_high)) +
  geom_point() +
  geom_line(aes(y = prediction_probs))

# Calculating accuracy of predictions
mean(dummy_data$edu_level_high == round(prediction_probs))

# Analyzing feature importance
shapiro.test(log_model$coefficients) 

# Comparing results of feature importance tests
x1 <- log_model$coefficients[1]
x2 <- log_model$coefficients[2]
anova_model <- lm(formula = x1 ~ x2, data = log_model$coefficients)

# Identifying most important features
summary(anova_model)

# Applying model to new data
new_data <- read.csv("new_community_data.csv")
results <- predict(log_model, type = "response", newdata = new_data)

# Visualizing results
ggplot(new_data, aes(x = age, y = results)) +
  geom_point() +
  geom_line(aes(y = prediction))