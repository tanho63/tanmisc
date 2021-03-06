% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/unbind_dt.R
\name{unbind_dt}
\alias{unbind_dt}
\title{Unbind Shiny Inputs (server function)
When generating inputs reactively, it's sometimes necessary to unbind old inputs so that you can use the updated inputs in Shiny.
`\code{unbind_dt_js()} adds the JS to the UI, while \code{unbind_dt()} is called as needed in the server component
(usually as part of an \code{observeEvent} or \code{eventReactive})}
\usage{
unbind_dt(dt_name, session = session)
}
\arguments{
\item{dt_name}{String representing the table's output ID (i.e. to unbind in output$table_alpha, use "table_alpha" as the parameter)}
}
\value{
a call to the JS that unbinds \code{dt_name}
}
\description{
Unbind Shiny Inputs (server function)
When generating inputs reactively, it's sometimes necessary to unbind old inputs so that you can use the updated inputs in Shiny.
`\code{unbind_dt_js()} adds the JS to the UI, while \code{unbind_dt()} is called as needed in the server component
(usually as part of an \code{observeEvent} or \code{eventReactive})
}
\examples{
unbind_dt('player_table')

}
