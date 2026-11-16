# Clean the data (if needed) and render output/final_report.pdf
if (!file.exists(here::here("data", "processed", "clean_data.rds"))) {
  source(here::here("scripts", "01_clean_data.R"))
}
rmarkdown::render(here::here("reports", "final_report.Rmd"),
                  output_dir = here::here("output"))
