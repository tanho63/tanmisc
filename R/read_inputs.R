#' Read a sequence of Shiny Inputs
#'
#' @param inputid a vector of inputids to read
#' @param nullarg the value to return if the input value is \code{NULL} i.e. missing
#' @param type one of \code{('chr','dbl','lgl','int')} - specifies type of atomic vector to return
#' @param input_obj the input object from the Shiny session (hopefully.)
#'
#' @return a vector of values
#'
#' @examples
#' read_inputs(inputid = c('select_1','select_2'), nullarg = NA, type = 'chr')
#' @export

read_inputs <- function(inputid = NULL,
                        nullarg = NA,
                        type = c('chr','dbl','lgl','int'),
                        input_obj = get('input',envir = shiny::getDefaultReactiveDomain())){

  map_function <- switch(match.arg(type),
                         'chr' = purrr::map_chr,
                         'dbl' = purrr::map_dbl,
                         'lgl' = purrr::map_lgl,
                         'int' = purrr::map_int)

  map_function(inputid,~ if(!is.null(input_obj[[..1]])){input_obj[[..1]]} else {nullarg})

}
