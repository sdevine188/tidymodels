library(tidyverse)
library(tidymodels)


# https://parsnip.tidymodels.org/reference/details_boost_tree_xgboost.html
# https://parsnip.tidymodels.org/articles/Examples.html
# https://juliasilge.com/categories/tidymodels/
# https://juliasilge.com/blog/intro-tidymodels/
# https://juliasilge.com/blog/sf-trees-random-tuning/
# https://juliasilge.com/blog/xgboost-tune-volleyball/
# https://juliasilge.com/blog/lasso-the-office/
# https://stacks.tidymodels.org/articles/basics.html
# https://www.tmwr.org/
# https://topepo.github.io/Cubist/articles/extras/tuning.html
# https://robjhyndman.com/hyndsight/tscv/
# https://www.tidymodels.org/learn/models/time-series/
# https://topepo.github.io/Cubist/articles/extras/tuning.html
# https://www.tidyverse.org/blog/2020/05/rules-0-0-1/


ex_data <- data.frame(row = 1:20, some_var = rnorm(20))
ex_data

split_1 <- rolling_origin(ex_data, initial = 5, assess = 1, cumulative = TRUE)
split_1 

analysis(split_1$splits[[1]])
assessment(split_1$splits[[1]])

analysis(split_1$splits[[2]])
assessment(split_1$splits[[2]])


#////////////


split_2 <- rolling_origin(ex_data, initial = 5, assess = 2, cumulative = TRUE)
split_2

analysis(split_2$splits[[1]])
assessment(split_2$splits[[1]])

analysis(split_2$splits[[2]])
assessment(split_2$splits[[2]])



#////////////////////////////////////////////////////////////////////////////////////


split_3 <- sliding_window(ex_data, lookback = 5, assess_stop = 1, step = 1)
split_3

analysis(split_3$splits[[1]])
assessment(split_3$splits[[1]])

analysis(split_3$splits[[2]])
assessment(split_3$splits[[2]])


#////////////////////////////////////////////////////////////////////////////////////


split_4 <- sliding_window(ex_data, lookback = 5, assess_stop = 1, step = 3)
split_4

analysis(split_4$splits[[1]])
assessment(split_4$splits[[1]])

analysis(split_4$splits[[2]])
assessment(split_4$splits[[2]])


#////////////////////////////////////////////////////////////////////////////////////


split_5 <- sliding_window(ex_data, lookback = Inf, assess_stop = 3, step = 1)
split_5

analysis(split_5$splits[[1]])
assessment(split_5$splits[[1]])

analysis(split_5$splits[[2]])
assessment(split_5$splits[[2]])

analysis(split_5$splits[[16]])
assessment(split_5$splits[[16]])

analysis(split_5$splits[[17]])
assessment(split_5$splits[[17]])

