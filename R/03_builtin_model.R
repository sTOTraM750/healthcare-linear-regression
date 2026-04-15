model <- lm(Billing.Amount ~ Age, data = data)

summary(model)


# Extract coefficients
coefficients <- coef(model)
print(coefficients)