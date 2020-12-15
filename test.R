library(dplyr)
library(ggplot2)

dataset <- read.csv('superstore_simple.csv')

datagroupbysegment <- dataset %>% 
  group_by(segment, category) %>% 
  summarise(total_sales = sum(sales), 
            avg_sales = mean(sales),
            min(quantity),
            n_order = n())

data_a <- dataset %>% filter(segment == 'Corporate') %>% 
  select(c(order_id,order_date,segment,sub_category,sales))
