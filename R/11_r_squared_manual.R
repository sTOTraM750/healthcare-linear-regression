# Computing R-squared manually

data <- read.csv("data/hcd.csv")

x <- data$Age
y <- data$Billing.Amount

model <- lm(Billing.Amount ~ Age, data = data)

y_hat <- predict(model)

# RSS
rss <- sum((y - y_hat)^2)

# TSS
tss <- sum((y - mean(y))^2)

# R-squared
r_squared <- 1 - (rss / tss)

cat("Manual R-squared:", r_squared, "\n")

write(paste("R-squared =", r_squared), "output/r_squared.txt")