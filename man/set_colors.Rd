% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/env_functions.R
\name{set_colors}
\alias{set_colors}
\title{Change default colors of the package.}
\usage{
set_colors(colors_df)
}
\arguments{
\item{colors_df}{data frame with 6 rows and 2 columns. Columns must nave names : "text_colors", "bar_colors". In cells there should be rgb values of chosen colors in format: "rgb(x,y,z)". Rows represent subsequent colors on stacked plots.}
}
\value{
No return value, called for side effects.
}
\description{
Customize your plots and change default color palette.
}
\examples{
mi2lab_colors <- cbind(
  bar_colors =  c(
   "rgb(68, 19, 71)",
   "rgb(243, 46, 255)",
   "rgb(106, 0, 112)",
   "rgb(217, 43, 227)" ,
   "rgb(114, 49, 117)",
   "rgb(249, 110, 255)"
 ),
text_colors = c("white", "white", "white", "white", "white", "white"))

set_colors(mi2lab_colors)

}
