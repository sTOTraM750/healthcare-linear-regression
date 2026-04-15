data <- read.csv("data/hcd.csv")

model <- lm(Billing.Amount ~ Age, data = data)

t_value <- summary(model)$coefficients[2,3]

df <- nrow(data) - 2

p_value <- 2 * (1 - pt(abs(t_value), df))

cat("Manual p-value:", p_value, "\n")