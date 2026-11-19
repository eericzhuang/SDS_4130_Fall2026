# SDS 4130 Final Project (Fall 2026)

Regression analysis of retail demand, written in R Markdown and rendered to PDF.

## Data

The dataset is **not** stored in this repo. Get `sales_data.csv` from the group's
shared folder and place it at `data/raw/sales_data.csv`.

## Setup (each group member, once)

```r
install.packages("renv")
renv::restore()
tinytex::install_tinytex()   # skip if TinyTeX is already installed
```

## Render

```bash
Rscript render.R             # cleans data if needed -> output/final_report.pdf
```

Or open `reports/final_report.Rmd` in RStudio and click **Knit** (run
`scripts/01_clean_data.R` first).

## Structure

- `reports/final_report.Rmd`: main document (YAML, setup, appendix)
- `reports/sections/`: one child Rmd per section; each member owns one
- `R/functions.R`: shared helpers (e.g. `reg_table()`)
- `scripts/01_clean_data.R`: raw CSV -> `data/processed/clean_data.rds`
- `data/raw/`, `data/processed/`: local only (git-ignored)
- `figures/`: saved figures
- `output/`: rendered report (git-ignored)

## Group workflow

- Edit only your own section file to avoid merge conflicts.
- Chunk labels must be unique across all sections; prefix them with the section (e.g. `ida-`, `diag-`).
- After adding a package: `renv::snapshot()` and commit `renv.lock`.
- `git pull` before you start, commit small, push often.
