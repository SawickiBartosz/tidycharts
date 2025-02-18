% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/column_chart_functions.R
\name{column_chart}
\alias{column_chart}
\title{Generate basic column chart.}
\usage{
column_chart(
  data,
  x,
  series = NULL,
  series_labels = series,
  styles = NULL,
  interval = "months"
)
}
\arguments{
\item{data}{data frame in wide format containing data to be plotted}

\item{x}{vector containing labels for x axis or name of column in data with values of x axis labels}

\item{series}{vector containing names of columns in data with values to plot}

\item{series_labels}{optional vector with labels for series to be plotted as legend. The default is the same as series.}

\item{styles}{optional vector with styles of bars}

\item{interval}{intervals on x axis. The width of the bars depends on this parameter}
}
\value{
object of class tidychart with a character vector containing SVG elements
}
\description{
If more than one series is supplied, stacked column plot is generated.
}
\examples{
# prepare some data frame
df <- data.frame(x = month.abb[1:6],
                 y = c(2, 4, 2, 1, 2.5, 3),
                 z = c(3, 4.5, 2, 1, 4, 2))

# generate character vectors with svg data
svg1 <- column_chart(df, x = 'x', series = 'y')
svg2 <- column_chart(df, x = df$x, series = c('y', 'z'))


# show the plot
svg1

}
