% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bar_chart.R
\name{bar_chart_relative_variance}
\alias{bar_chart_relative_variance}
\title{Generate bar chart with relative variance (in percents).}
\usage{
bar_chart_relative_variance(
  data = NULL,
  cat,
  baseline,
  real,
  colors = 1,
  y_title,
  y_style = "previous",
  styles = NULL
)
}
\arguments{
\item{data}{data frame with columns containing data for x, baseline or real series}

\item{cat}{vector containing category names of values}

\item{baseline}{vector containing base values or name of column in data with base values}

\item{real}{vector containing values that will be compared to baseline  or name of column in data with that values}

\item{colors}{1 if green color represents positive values having good business impact and red negative values having bad impact or 2 if otherwise}

\item{y_title}{title of the series values}

\item{y_style}{style of y axis to indicate baseline scenario}

\item{styles}{optional vector with styles of the pin heads}
}
\value{
object of class tidychart with a character vector containing SVG elements
}
\description{
Generate bar chart with relative variance (in percents).
}
\examples{
# get some data
real <- sin(1:5)
baseline <- cos(1:5)
cat <- letters[1:5]

bar_chart_relative_variance(
  cat = cat,
  baseline = baseline,
  real = real,
  y_title = 'a title')
}
