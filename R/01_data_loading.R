data <- read.csv("data/hcd.csv")

# Extract variables

x <- data$Age
y <- data$Billing.Amount


# Basic info :
print(head(data))
summary(data)