png("output/plots.png")

plot(x, y,
        main = "Healthcare Cost vs Age",
        xlab = "Age",
        ylab = "Billing Amount",
        col="blue")

    abline(beta0, beta1, col="red", lwd=2)

dev.off()