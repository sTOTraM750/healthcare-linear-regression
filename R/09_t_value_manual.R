data <- read.csv("data/hcd.csv")

model <- lm(Billing.Amount ~ Age, data = data)

beta1 <- coef(model)[2]

se_beta1 <- summary(model)$coefficients[2,2]

t_value <- beta1 / se_beta1

cat("Manual t-value:", t_value, "\n")