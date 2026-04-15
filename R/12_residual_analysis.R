# Understand error behavior

data <- read.csv("data/hcd.csv")

model <- lm(Billing.Amount ~ Age, data = data)

residuals <- resid(model)
fitted <- fitted(model)

# Basic stats
cat("Mean of residuals:", mean(residuals), "\n")
cat("Variance of residuals:", var(residuals), "\n")

# Check pattern
plot(fitted, residuals,
     main = "Residuals vs Fitted",
     xlab = "Fitted Values",
     ylab = "Residuals",
     col = "blue")


abline(h = 0, col = "red")