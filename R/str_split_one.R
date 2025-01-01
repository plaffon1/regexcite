#' Split a string
#'
#' @param string A single string to be split
#' @param pattern regular expresison to split the string
#' @param n Maximum number of pieces to return, defaults to Inf (return everything)
#'
#' @returns a character vector
#' @export
#' @examples
#' str_split_one("ABCD", pattern = "") # c('a','b','c')
str_split_one <- function(string, pattern, n = Inf) {

  stopifnot(is.character(string), length(string) <= 1)
  if (length(string) == 1) {
    stringr::str_split(string = string, pattern = pattern, n = n)[[1]]
  } else {
    character()
  }
}
