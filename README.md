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