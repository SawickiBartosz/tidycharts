% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/column_chart_functions.R
\name{column_chart_waterfall}
\alias{column_chart_waterfall}
\title{Generate column waterfall chart for visualizing contribution.}
\usage{
column_chart_waterfall(data, x, series, styles = NULL, interval = "months")
}
\arguments{
\item{data}{data frame in wide format containing data to be plotted}

\item{x}{vector containing labels for x axis or name of column in data with values of x axis labels}

\item{series}{vector containing names of columns in data with values to plot}

\item{styles}{optional vector with styles of bars}

\item{interval}{intervals on x axis. The width of the bars depends on this parameter}
}
\value{
object of class tidychart with a character vector containing SVG elements
}
\description{
Generate column waterfall chart for visualizing contribution.
}
\examples{
df <- data.frame(x = 10:18,
                 y = rnorm(9))
column_chart_waterfall(df, 'x', 'y')
}
