data <- read.csv("data/hcd.csv")

model <- lm(Billing.Amount ~ Age, data = data)

png("output/residuals_plot.png")

par(mfrow = c(2, 2))
plot(model)

dev.off()