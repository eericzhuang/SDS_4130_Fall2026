# Shared helper functions, sourced by reports/final_report.Rmd

reg_table <- function(fit, caption = NULL, digits = 3) {
  broom::tidy(fit, conf.int = TRUE) |>
    # a row starting with "(" right after \midrule breaks LaTeX booktabs
    dplyr::mutate(term = dplyr::if_else(term == "(Intercept)", "Intercept", term)) |>
    knitr::kable(booktabs = TRUE, digits = digits, caption = caption,
                 col.names = c("Term", "Estimate", "Std. Error", "t", "p-value",
                               "CI Lower", "CI Upper")) |>
    kableExtra::kable_styling(latex_options = "HOLD_position")
}
