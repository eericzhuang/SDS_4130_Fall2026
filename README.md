# SDS_4130_Fall2026

Short description of the project.

## Setup

```r
install.packages("renv")
renv::restore()
```

## Render

```r
rmarkdown::render("reports/analysis.Rmd", output_dir = "output")
```

For PDF output, install LaTeX once: `tinytex::install_tinytex()`.

## Structure

- `reports/`: R Markdown sources
- `data/raw/`: original, immutable data
- `data/processed/`: derived data
- `figures/`: generated figures
- `output/`: rendered reports (git-ignored)
- `renv.lock`: pinned package versions
