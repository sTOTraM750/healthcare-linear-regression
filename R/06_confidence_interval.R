data <- read.csv("data/hcd.csv")

model <- lm(Billing.Amount ~ Age, data = data)

ci <- confint(model)

print(ci)

write(capture.output(ci), "output/confidence_interval.txt")