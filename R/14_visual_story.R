# Load data
data <- read.csv("data/hcd.csv")

x <- data$Age
y <- data$Billing.Amount

# Model
model <- lm(Billing.Amount ~ Age, data = data)
y_hat <- predict(model)

# Residuals
residuals <- y - y_hat

# Save plots
png("output/visual_story.png", width = 1000, height = 800)

par(mfrow = c(2, 2))

# 1. Scatter + Regression Line
plot(x, y,
     main = "Age vs Healthcare Cost",
     xlab = "Age",
     ylab = "Billing Amount",
     col = "blue")

abline(model, col = "red", lwd = 2)

# 2. Residuals vs Fitted
plot(y_hat, residuals,
     main = "Residuals vs Fitted",
     xlab = "Fitted Values",
     ylab = "Residuals",
     col = "purple")

abline(h = 0, col = "red")

# 3. Histogram of Residuals
hist(residuals,
     main = "Distribution of Residuals",
     xlab = "Residuals",
     col = "green")

# 4. Q-Q Plot (Normality Check)
qqnorm(residuals)
qqline(residuals, col = "red")

dev.off()
