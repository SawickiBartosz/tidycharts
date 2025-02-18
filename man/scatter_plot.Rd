% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scatter_and_bubble_plot.R
\name{scatter_plot}
\alias{scatter_plot}
\title{Generates a scatter plot. If additional argument added, a bubble plot is generated.}
\usage{
scatter_plot(
  data,
  x,
  y,
  cat = NULL,
  x_space_size = NULL,
  y_space_size = NULL,
  x_names = c("x", ""),
  y_names = c("y", ""),
  legend_title = "Legend",
  bubble_value = NULL,
  x_start = 0,
  x_end = max(get_vector(data, x)),
  y_start = 0,
  y_end = max(get_vector(data, y))
)
}
\arguments{
\item{data}{data frame containing data to be plotted}

\item{x}{string containing a column name or a vector containing x - coordinates of values}

\item{y}{string containing a column name or a vector containing y - coordinates of values}

\item{cat}{string containing a column name or a vector containing categories of the values}

\item{x_space_size, y_space_size}{numeric value of the space between the ticks on the x,y - axis. Defaultly, axis will be divided into 8 sections}

\item{x_names}{vector containing two values:
* name of the value presented on the x - axis
* units of values presented on the x - axis}

\item{y_names}{vector containing two values:
* name of the value presented on the y - axis
* units of values presented on the y - axis}

\item{legend_title}{title of the legend}

\item{bubble_value}{vector containing values defining the size of bubbles. Set by default to NULL.}

\item{x_start}{numeric value defining where the x axis should start at. Set by default to 0.}

\item{x_end}{numeric value defining where the x axis should end at. Set by default to max(x).}

\item{y_start}{numeric value defining where the y axis should start at. Set by default to 0.}

\item{y_end}{numeric value defining where the y axis should end at. Set by default to max(y).}
}
\value{
object of class tidychart with a character vector containing SVG elements
}
\description{
Generates a scatter plot. If additional argument added, a bubble plot is generated.
}
\examples{
# prepare a data frame
data <- data.frame(
    x = c(2, -3, -5, 5.5, 7, 9, 2.5, 1, 5, 5.3, 8.5, 6.6),
    value = c(5,-3,2,6, 7, 3, -2, 1,7,8,3, -5),
    cat = c("val1","val1","val2","val2","val2",
            "val3","val3","val3", "val4","val4","val4","val4"),
    bubble = c (1,2,12,4,5,4,8,2,1,9, 8, 4.5 )
)

# generate character vectors with svg data
scatter <- scatter_plot(
  data = data,
  x = data$x,
  y = data$value,
  cat = data$cat,
  x_space_size = 2,
  y_space_size = 1,
  x_names = c("time", "in s"),
  y_names = c("distance", "in km"),
  legend_title = "Legend")

bubble <-scatter_plot(
  data = data,
  x = data$x,
  y = data$value,
  cat = data$cat,
  x_space_size = 2,
  y_space_size = 1,
  x_names = c("time", "in s"),
  y_names = c("distance", "in km"),
  legend_title = "Legend",
  bubble_value = data$bubble)

# show the plots
scatter
bubble

}
