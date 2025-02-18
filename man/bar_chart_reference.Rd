% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bar_chart.R
\name{bar_chart_reference}
\alias{bar_chart_reference}
\title{Generates basic horizontal barchart with index on a given value. If more than one series is supplied, stacked barchart is generated.}
\usage{
bar_chart_reference(
  data,
  cat,
  series,
  ref_val,
  series_labels = series,
  styles = NULL,
  ref_label = ref_val
)
}
\arguments{
\item{data}{data frame containing data to be plotted}

\item{cat}{vector containing category names of values}

\item{series}{vector containing names of columns in data with values to plot}

\item{ref_val}{numeric value of the index}

\item{series_labels}{vector containing names of series to be shown on the plot}

\item{styles}{optional vector with styles of bars}

\item{ref_label}{string defining a text that should be displayed in the referencing line. Set by default to index_val.}
}
\value{
object of class tidychart with a character vector containing SVG elements
}
\description{
Generates basic horizontal barchart with index on a given value. If more than one series is supplied, stacked barchart is generated.
}
\examples{

#prepare the data frame
data <- data.frame(
city = c("Berlin", "Munich", "Cologne", "London", "Vienna", "Paris", "Zurich"),
Products = c(538, 250, 75, 301, 227, 100, 40),
Services = c(621, 545, 302, 44, 39, 20, 34)
)
#create svg string
barchart_ref <- bar_chart_reference(data, data$city, c("Products"), 100, c("Products"))

#show the plot
barchart_ref

}
