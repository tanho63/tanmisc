#' Unbind Shiny Inputs (UI function)
#'
#' When generating inputs reactively, it's sometimes necessary to unbind old inputs so that you can use the updated inputs in Shiny.
#' `\code{"unbind_dt_js()"} needs to be called in the UI so that the JS code is available in the session,
#' and then \code{unbind_dt()} should be called as needed in the server component (usually as part of an observeEvent or eventReactive)
#'
#' @return Adds JS to HTML head
#'
#' @examples
#' unbind_dt_js()
#'
#' @export
unbind_dt_js <- function()
  {htmltools::tags$head(
    htmltools::tags$script(
      'Shiny.addCustomMessageHandler("unbind_table_elements", function(x) {
              Shiny.unbindAll($(document.getElementById(x)).find(".dataTable"));
                        });'
    ))}

#' Unbind Shiny Inputs (server function)
#' When generating inputs reactively, it's sometimes necessary to unbind old inputs so that you can use the updated inputs in Shiny.
#' `\code{"unbind_dt_js()"} needs to be called in the UI so that the JS code is available in the session,
#' and then \code{unbind_dt()} should be called as needed in the server component (usually as part of an observeEvent or eventReactive)
#'
#' @param dt_name String representing the table's output ID (i.e. to unbind in output$table_alpha, use "table_alpha" as the parameter)
#'
#' @return a call to the JS that unbinds tables.
#'
#' @examples
#' unbind_dt('player_table')
#'
#' @export

unbind_dt <- function(dt_name,session = session){
  session$sendCustomMessage("unbind_table_elements",dt_name)
}
