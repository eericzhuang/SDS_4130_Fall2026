# Read data/raw/sales_data.csv, clean it, save data/processed/clean_data.rds
library(tidyverse)
library(here)

raw <- read_csv(here("data", "raw", "sales_data.csv"), show_col_types = FALSE)

clean <- raw |>
  rename_with(~ str_replace_all(tolower(.x), " ", "_")) |>
  mutate(
    date = as.Date(date),
    across(c(store_id, product_id, category, region,
             weather_condition, seasonality), as.factor),
    seasonality = fct_relevel(seasonality, "Winter", "Spring", "Summer", "Autumn")
  )

saveRDS(clean, here("data", "processed", "clean_data.rds"))
message("Saved ", nrow(clean), " rows to data/processed/clean_data.rds")
