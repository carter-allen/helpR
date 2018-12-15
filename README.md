# helpR

This is a package with some simple functions for reporting summary statistics and associated measures of variability in documents created with `R`. For example, reporting a mean and standard deviation of a data vector in the form "mean (s.d.)" requires composing paste statements in `R`, but can more cleanly be done with `mean_sd(x)`.

## Installation

```{r}
devtools::install_github("carter-allen/helpR")
```

## Usage

A typical use for these functions are in `dplyr` summary chains. For example, 

```{r}
library(dplyr)

mtcars %>% 
    group_by(cyl) %>% 
    summarize(meansd = mean_sd(mpg))
```

```
# A tibble: 3 x 2
    cyl meansd      
  <dbl> <chr>       
1     4 26.66 (4.51)
2     6 19.74 (1.45)
3     8 15.1 (2.56) 
```
