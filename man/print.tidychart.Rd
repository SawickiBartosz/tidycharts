% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidychart.R
\name{print.tidychart}
\alias{print.tidychart}
\title{Explicitly draw tidychart}
\usage{
\method{print}{tidychart}(x, ...)
}
\arguments{
\item{x}{object of class tidychart to display}

\item{...}{arguments passed to `SVGrenderer` function}
}
\value{
Invisibly returns the object of the tidychart class
}
\description{
This function overrides default print method for tidycharts and prints them on the
viewer pane in RStudio or as output in knitr.
}
\examples{
# simply calling a plotting function will result in showing the chart
bar_chart(
  data = data.frame(
    cat = c('a', 'b', 'c'),
    series = c(12,15,16)),
  cat = 'cat',
  series = 'series')

# result of the plotting function can also be assigned
barchart <- bar_chart(
  data = data.frame(
    cat = c('a', 'b', 'c'),
    series = c(12,15,16)),
  cat = 'cat',
  series = 'series')
# and explicitly printed
print(barchart)
# or implicitly printed
barchart
}
