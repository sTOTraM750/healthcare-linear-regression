# Mean:
x_bar <- mean(x)
y_bar <- mean(y)


# Beta 1:
numerator <- sum((x-x_bar)*(y-y_bar))
denominator <- sum((x-x_bar)^2)

beta1 <- numerator/denominator

# Beta 0:
beta0 <- y_bar - beta1 * x_bar


# Print results:
cat("Manual Regression Model:\n")
cat("y=", beta0, "+", beta1, "* x\n")


# Save Output:
write(paste("beta0=", beta0, "beta1=", beta1), 
file="output/manual_regression.txt")