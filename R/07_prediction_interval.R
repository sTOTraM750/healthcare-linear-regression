data <- read.csv("data/hcd.csv")

model <- lm(Billing.Amount ~ Age, data = data)

new_data <- data.frame(Age = 55)

prediction <- predict(model, newdata = new_data, interval = "prediction")

print(prediction)

write(capture.output(prediction), "output/prediction_interval.txt")