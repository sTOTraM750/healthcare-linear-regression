data <- read.csv("data/hcd.csv")

model <- lm(Billing.Amount ~ Age, data = data)

beta0 <- coef(model)[1]
beta1 <- coef(model)[2]

cat("INTERPRETATION:\n")

cat("Intercept (β0):", beta0, "\n")
cat("Meaning: Base healthcare cost when Age = 0\n\n")

cat("Slope (β1):", beta1, "\n")
cat("Meaning: For every 1 year increase in age, cost increases by", beta1, "\n\n")

cat("For 10 years increase:\n")
cat("Cost increase =", beta1 * 10, "\n")

# Save
write("Interpretation complete", "output/interpretation.txt")