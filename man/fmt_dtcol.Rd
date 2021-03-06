% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/format_dt_col.R
\name{fmt_dtcol}
\alias{fmt_dtcol}
\title{Colour DT column by range (automatic range)}
\usage{
fmt_dtcol(
  dt,
  df,
  col_id,
  col_range = "Auto",
  colours = c("#af8dc3", "#FFFFFF", "#7fbf7b")
)
}
\arguments{
\item{dt}{a DT object created by \code{DT::datatable()}}

\item{df}{the original dataframe used to create the DT}

\item{col_id}{a vector of column identifiers (number or name)}

\item{colours}{A set of hex colours to be passed on to \code{colorRampPalette()}}

\item{column_range}{Either the minimum and maximum range to be coloured, or "Auto" which defaults to the max and min of the table column.}
}
\value{
A DT object with added colour formatting
}
\description{
Colours DT columns based on the minimum and maximum of each column.
Defaults to a purple-green colour scheme.
}
\examples{
datatable(df_players) \%>\%
fmt_dtcol(dt = ., df = df_players, column_range = "Auto", col_id = c('Height',"Weight"))

}
