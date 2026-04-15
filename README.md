# Healthcare Cost Prediction using Linear Regression (From Scratch)

## Overview
This project demonstrates how Linear Regression works from scratch using a healthcare dataset.

We manually derive and implement:
- Mean calculation
- Slope (β1)
- Intercept (β0)
- Prediction equation

Then we compare results with R's built-in `lm()` function.

---

## Dataset
- Feature: Age
- Target: Billing Amount

---

## Mathematical Model

y = β0 + β1x

Where:
- β0 = Intercept
- β1 = Slope

---

## Steps Performed

1. Data loading
2. Manual regression derivation
3. Built-in model comparison
4. Visualization

---

## Results

- Manual and built-in results match
- Positive relationship between age and cost

---

## Tech Stack

- R
- Base plotting

---

## How to Run

```r
source("R/01_data_loading.R")
source("R/02_manual_regression.R")
source("R/03_builtin_model.R")
source("R/04_visualization.R")

```

---

## Key Learning

This project builds the foundation of Machine Learning by implementing regression mathematically instead of using black-box libraries.


##  Explainable Analytics

This project goes beyond prediction by interpreting the regression model.

## Key Insights:
- β0 represents baseline cost
- β1 represents cost increase per year
- Confidence interval shows uncertainty in slope
- Prediction interval gives range of expected cost

This makes the model useful for real-world decision making.


## Hypothesis Testing

### Hypothesis:
- H0: Age has no effect on healthcare cost
- H1: Age affects healthcare cost

### Result:
- p-value < 0.05 → Reject H0

### Conclusion:
Age is a statistically significant factor in determining healthcare cost.

This means the relationship observed is not due to random chance.


## Model Evaluation & Diagnostics

### Metrics Used:
- R-squared
- Residual analysis
- Diagnostic plots

### Insights:
- R² shows how much variance is explained
- Residuals reveal model errors
- Diagnostics check assumptions (linearity, normality)

This ensures the model is reliable before using it in real-world decisions.


## Visual Analytics

This project includes visual analysis of the regression model:

### Plots:
- Scatter plot with regression line
- Residual vs fitted plot
- Histogram of residuals
- Q-Q plot for normality

### Insights:
- Visual confirmation of linear relationship
- Residual patterns help detect model issues
- Distribution checks validate assumptions