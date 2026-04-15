data <- read.csv("data/hcd.csv")

model <- lm(Billing.Amount ~ Age, data = data )

summary_model <- summary(model)
print(summary_model)


# Extract p-value
p_value <- summary_model$coefficients[2, 4]

cat("P-Value:", p_value, "\n")

if (p_value < 0.05) {
  cat("Reject H0: Age is significant\n")
} else {
  cat("Fail to reject H0: Age is not significant\n")
}

write(capture.output(summary_model), "output/hypothesis_result.txt")